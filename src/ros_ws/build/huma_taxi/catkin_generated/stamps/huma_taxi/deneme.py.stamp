#!/usr/bin/env python3

import rospy
import inputs
import time
import threading
import numpy as np
from can_msgs.msg import Frame  
from smart_can_msgs.msg import rc_unittoOmux
from smart_can_msgs.msg import RC_THRT_DATA
from smart_can_msgs.msg import AUTONOMOUS_BrakePedalControl
from smart_can_msgs.msg import AUTONOMOUS_HB_MotorControl
from smart_can_msgs.msg import AUTONOMOUS_SteeringMot_Control
from smart_can_msgs.msg import FeedbackSteeringAngle

from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy
from std_msgs.msg import Bool, Float64

class AutonomousController(object):
    def __init__(self):
        self.emergency_stop = False
        self.current_steering_angle = 0.0
        self.pad = inputs.devices.gamepads[0]
    
        self.can_pub = rospy.Publisher('/sent_messages', Frame, queue_size=10)
        
        self.cmd_publisher = rospy.Publisher('/gamepad_cmd', Joy, queue_size=10)

        self.abs_ry_counter_pub = rospy.Publisher('/abs_ry_count',Float64, queue_size=5)

        self.msg_unittomux = rc_unittoOmux()

        #beemobs pubs
        self.steering_pub = rospy.Publisher('/beemobs/AUTONOMOUS_SteeringMot_Control', AUTONOMOUS_SteeringMot_Control, queue_size=10)
        self.unittomux_pub = rospy.Publisher('/beemobs/rc_unittoOmux', rc_unittoOmux, queue_size=10)
        self.thrt_pub = rospy.Publisher('/beemobs/RC_THRT_DATA', RC_THRT_DATA, queue_size=10)
        self.brake_pub = rospy.Publisher('/beemobs/AUTONOMOUS_BrakePedalControl', AUTONOMOUS_BrakePedalControl, queue_size=10)
        self.hb_pub = rospy.Publisher('/beemobs/AUTONOMOUS_HB_MotorControl', AUTONOMOUS_HB_MotorControl, queue_size=10)
        self.steer_angle_sub = rospy.Subscriber('/beemobs/FeedbackSteeringAngle',FeedbackSteeringAngle ,self.steercallback)

    def steercallback(self, data):
        print(data)
        self.current_steering_angle = data.FeedBackSteeringAngle


    def initialize_vehicle(self):
        rospy.loginfo("Initializing vehicle")

        self.msg_unittomux.AUTONOMOUS_EMERGENCY = 0
        self.msg_unittomux.RC_WindowResintance = 0
        self.msg_unittomux.RC_InteriorLight = 0
        self.msg_unittomux.RC_ReverseLight = 0
        self.msg_unittomux.RC_DRL = 0
        self.msg_unittomux.RC_BrakeLight = 0
        self.msg_unittomux.AUTONOMOUS_DOOR_OPEN = 0
        self.msg_unittomux.AUTONOMOUS_DOOR_CLOSE = 0
        self.msg_unittomux.RC_SignalStatus = 0
        self.msg_unittomux.RC_LowBeam = 0
        self.msg_unittomux.RC_HighBeam = 0
        self.msg_unittomux.RC_SelectionGear = 0
        self.msg_unittomux.RC_Ignition = 1
        self.unittomux_pub.publish(self.msg_unittomux)
        time.sleep(0.1)
        # Brake initialization
        brake_msg = AUTONOMOUS_BrakePedalControl()
        brake_msg.AUTONOMOUS_BrakeMotor_Voltage = 1
        brake_msg.AUTONOMOUS_BrakePedalMotor_PER = 0
        brake_msg.AUTONOMOUS_BrakePedalMotor_ACC = 10000
        brake_msg.AUTONOMOUS_BrakePedalMotor_EN = 1
        self.brake_pub.publish(brake_msg)
        time.sleep(0.1)

        # Handbrake initialization
        msghb = AUTONOMOUS_HB_MotorControl()
        msghb.AUTONOMOUS_HB_Motor_PWM = 200
        msghb.AUTONOMOUS_HB_MotState = 0
        msghb.AUTONOMOUS_HB_MotEN = 1

        self.hb_pub.publish(msghb)
        time.sleep(0.1)

        # Gear selection
        self.msg_unittomux.RC_SelectionGear = 0
        self.unittomux_pub.publish(self.msg_unittomux)
        time.sleep(0.1)

        rospy.loginfo("Vehicle initialized")

    def move_forward(self, duration):
        
        if self.emergency_stop:
            rospy.loginfo("Emergency stop activated. Cannot move forward.")
            return
        
        msghb = AUTONOMOUS_HB_MotorControl()
        msghb.AUTONOMOUS_HB_Motor_PWM = 200
        msghb.AUTONOMOUS_HB_MotState = 1
        msghb.AUTONOMOUS_HB_MotEN = 1

        self.hb_pub.publish(msghb)
        time.sleep(0.1)

        self.msg_unittomux.RC_SelectionGear = 1  # Set to forward gear
        self.unittomux_pub.publish(self.msg_unittomux)
        time.sleep(0.1)

        rospy.loginfo("Moving forward")
        msg = RC_THRT_DATA()
        msg.RC_THRT_PEDAL_PRESS = 0
        msg.RC_THRT_PEDAL_POSITION = 90  # Adjust throttle position as needed
        start_time = time.time()
        while time.time() - start_time < duration:
            if self.emergency_stop:
                rospy.loginfo("Emergency stop activated. Stopping movement.")
                return
            self.thrt_pub.publish(msg)
            rospy.sleep(0.1)

    def turn(self, value):
        time.sleep(0.1)
        rospy.loginfo(f"Current steering angle: {self.current_steering_angle}, Target angle: {value}")

        # If the current angle is within the threshold, do nothing
        if abs(self.current_steering_angle - value) < 1.5:
            self.stop_steering()
            return

        # Determine the direction to turn
        if self.current_steering_angle < value:
            self.steer_right()
            direction = "right"
        else:
            self.steer_left()
            direction = "left"
        
        # Adjust steering gradually until the desired angle is reached within the threshold
        while abs(self.current_steering_angle - value) > 1.5:
            rospy.loginfo(f"Turning {direction}, Current angle: {self.current_steering_angle}")
            rospy.sleep(0.1)  # Adjust this value to control the frequency of adjustments

        rospy.loginfo(f"Reached target angle: {value}")
        self.stop_steering()
                

    # def turn_left(self):
    #     if self.emergency_stop:
    #         rospy.loginfo("Emergency stop activated. Cannot turn left.")
    #         return

    #     rospy.loginfo("Turning left")
    #     self.steer_left()

        
    #     while abs(self.current_steering_angle) <= 1:
    #         if self.emergency_stop:
    #             rospy.loginfo("Emergency stop activated. Stopping turn.")
    #             return
    #         rospy.sleep(0.1)
    #     rospy.loginfo("Steering angle is 15. Stopping turn.")
    #     # Stop turning
    #     self.stop_steering()

    # def turn_right(self):
    #     if self.emergency_stop:
    #         rospy.loginfo("Emergency stop activated. Cannot turn left.")
    #         return

    #     rospy.loginfo("Turning Right")
    #     self.steer_right()

    #     while self.current_steering_angle <= 15:
    #         if self.emergency_stop:
    #             rospy.loginfo("Emergency stop activated. Stopping turn.")
    #             return
    #         rospy.sleep(0.1)
    #     rospy.loginfo("Steering angle is 15. Stopping turn.")
    #     # Stop turning
    #     self.stop_steering()

    def steer_left(self):
        steering_msg = AUTONOMOUS_SteeringMot_Control()
        steering_msg.AUTONOMOUS_SteeringMot_EN = 1
        steering_msg.AUTONOMOUS_SteeringMot_PWM = 70  # Value for turning left
        self.steering_pub.publish(steering_msg)
        time.sleep(0.1)

    def steer_right(self):
        steering_msg = AUTONOMOUS_SteeringMot_Control()
        steering_msg.AUTONOMOUS_SteeringMot_EN = 1
        steering_msg.AUTONOMOUS_SteeringMot_PWM = 200  # Value for turning right
        self.steering_pub.publish(steering_msg)
        time.sleep(0.1)

    def stop_steering(self):
        steering_msg = AUTONOMOUS_SteeringMot_Control()
        steering_msg.AUTONOMOUS_SteeringMot_EN = 0
        steering_msg.AUTONOMOUS_SteeringMot_PWM = 0
        self.steering_pub.publish(steering_msg)
        time.sleep(0.1)

    def apply_brake(self, duration):
        if self.emergency_stop:
            rospy.loginfo("Emergency stop activated. Cannot apply brake.")
            return
        msg = RC_THRT_DATA()
        msg.RC_THRT_PEDAL_PRESS = 0
        msg.RC_THRT_PEDAL_POSITION = 0
        self.thrt_pub.publish(msg)
        time.sleep(0.1)
        rospy.loginfo("Applying brake")
        msg = AUTONOMOUS_BrakePedalControl()
        msg.AUTONOMOUS_BrakeMotor_Voltage = 1
        msg.AUTONOMOUS_BrakePedalMotor_PER = 30  # Full brake
        msg.AUTONOMOUS_BrakePedalMotor_ACC = 10000
        msg.AUTONOMOUS_BrakePedalMotor_EN = 1
        self.brake_pub.publish(msg)
        time.sleep(0.1)
        rospy.sleep(duration)
        msg.AUTONOMOUS_BrakePedalMotor_PER = 0  # Release brake
        self.brake_pub.publish(msg)
        time.sleep(0.1)


if __name__ == '__main__':
    try:
        rospy.init_node('autonomous_controller', anonymous=False)
        controller = AutonomousController()

        controller.initialize_vehicle()
        # Perform autonomous actions
        controller.move_forward(0.1)
        controller.turn(-15)
        time.sleep(8.0)
        # controller.turn(20)
        # time.sleep(5.0)
        controller.apply_brake(10.0)
        rospy.spin()

    except rospy.ROSInterruptException:
        pass