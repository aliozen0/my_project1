#!/usr/env/python3
import numpy as np
import rospy
from std_msgs.msg import Int16
from smart_can_msgs.msg import FeedbackSteeringAngle
from smart_can_msgs.msg import FB_VehicleSpeed
from huma_taxi.msg import lineMessage

k = 0.5  # control gain
ksoft = 0
Kp = 1.0  # speed proportional gain
L = 1.86  # [m] Wheel base of vehicle
max_steer = np.radians(30.0) 

def normalize_angle(angle):
    x = angle
    if(x>180):
        x = x - 360
    x = np.deg2rad(x)
    return x

class State:
    """
    Class representing the state of a vehicle.

    :param x: (float) x-coordinate
    :param y: (float) y-coordinate
    :param yaw: (float) yaw angle
    :param v: (float) speed
    """

    def __init__(self, yaw=0.0, v=0.0):
        """Instantiate the object."""
        self.yaw = yaw
        self.v = v

    def update(self, velocity,steering_yaw):
        """
        Update the state of the vehicle.

        Stanley Control uses bicycle model.

        :param acceleration: (float) Acceleration
        :param delta: (float) Steering
        """
        self.yaw = steering_yaw
        self.v = velocity

class lineTracker:

    def __init__(self):
        self.state = State()
        self.yaw_sub = rospy.Subscriber('/beemobs/FeedbackSteeringAngle',FeedbackSteeringAngle, self.yawcallback)
        self.speed_sub = rospy.Subscriber('/beemobs/FB_VehicleSpeed', FB_VehicleSpeed,self.speedcallback)
        self.yaw_pub = rospy.Publisher('/huma_taxi/desired_steering_angle', Int16, queue_size=10)
        self.line_sub = rospy.Subscriber('/huma/lineMessage',lineMessage,self.linecallback)

    def yawcallback(self , msg):
        self.state.yaw = msg.FeedBackSteeringAngle

    def speedcallback(self, msg):
        self.state.v = msg.FB_ReelVehicleSpeed_KMh
        
    def linecallback(self, msg):
        angle = msg.angle
        distance = msg.distance
        self.stanley_control(distance,angle)

    def stanley_control(self, cd, cyaw):
        """
        Stanley steering control.

        :param state: (State object)
        :param cx: ([float])
        :param cy: ([float])
        :param cyaw: ([float])
        :param last_target_idx: (int)
        :return: (float, int)
        """
        # theta_e corrects the heading error
        theta_e = normalize_angle(cyaw - self.state.yaw)
        # theta_d corrects the cross track error
        theta_d = np.arctan2(k * -abs(cd), ksoft + self.state.v)
        # Steering control
        delta = theta_e + theta_d
        delta = Int16(delta)
        self.yaw_pub.publish(delta)
        return delta

    def pid_control(self,target, current):
        """
        Proportional control for the speed.

        :param target: (float)
        :param current: (float)
        :return: (float)
        """
        return Kp * (target - current)



if __name__ == '__main__':
    try:
        rospy.init_node('lineTracking', anonymous=False)
        huma_linetracker = lineTracker()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
