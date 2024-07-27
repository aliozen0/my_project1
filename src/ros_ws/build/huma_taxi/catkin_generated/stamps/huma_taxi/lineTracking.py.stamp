#!/usr/bin/env python3

import rospy
import time
from std_msgs.msg import Int16
from smart_can_msgs.msg import rc_unittoOmux
from smart_can_msgs.msg import RC_THRT_DATA
from smart_can_msgs.msg import AUTONOMOUS_BrakePedalControl
from smart_can_msgs.msg import AUTONOMOUS_HB_MotorControl
from smart_can_msgs.msg import AUTONOMOUS_SteeringMot_Control
from smart_can_msgs.msg import FeedbackSteeringAngle

class AutonomousController(object):
    def __init__(self):
        self.emergency_stop = False

        self.current_steering_angle = 0.0
        self.desired_steering_angle = 0.0

        self.msg_unittomux = rc_unittoOmux()

        #beemobs pubs
        self.steering_pub = rospy.Publisher('/beemobs/AUTONOMOUS_SteeringMot_Control', AUTONOMOUS_SteeringMot_Control, queue_size=10)
        self.unittomux_pub = rospy.Publisher('/beemobs/rc_unittoOmux', rc_unittoOmux, queue_size=10)
        self.thrt_pub = rospy.Publisher('/beemobs/RC_THRT_DATA', RC_THRT_DATA, queue_size=10)
        self.brake_pub = rospy.Publisher('/beemobs/AUTONOMOUS_BrakePedalControl', AUTONOMOUS_BrakePedalControl, queue_size=10)
        self.hb_pub = rospy.Publisher('/beemobs/AUTONOMOUS_HB_MotorControl', AUTONOMOUS_HB_MotorControl, queue_size=10)
        self.steer_angle_sub = rospy.Subscriber('/beemobs/FeedbackSteeringAngle',FeedbackSteeringAngle ,self.steercallback)
        self.desired_steering_angle_sub = rospy.Subscriber('/huma_taxi/desired_steering_angle',Int16,self.update_steering_angle)

    def steercallback(self, data):
        self.current_steering_angle = data.FeedBackSteeringAngle
        self.turn(self.desired_steering_angle)


    def update_steering_angle(self, message):
        self.desired_steering_angle = message.data
        rospy.loginfo("updated desired angle")

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

    def move_forward(self, speed):

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

        msgrc = RC_THRT_DATA()
        msgrc.RC_THRT_PEDAL_PRESS = 0
        msgrc.RC_THRT_PEDAL_POSITION = speed  # Adjust throttle position as needed
        self.thrt_pub.publish(msgrc)

    def turn(self, degree):

        delta = degree - self.current_steering_angle
        delta = delta/60.0*127.0*2
        if(abs(delta)<4.2):
            self.stop_steering()
            return

        if delta < 0:
            if(delta <-127):
                delta = -127
            self.steer_left(abs(int(delta)))
        elif delta > 0:
            if(delta > 127):
                delta = 127
            self.steer_right(128+int(delta))
        

    
    def steer_left(self,pwm):
        steering_msg = AUTONOMOUS_SteeringMot_Control()
        steering_msg.AUTONOMOUS_SteeringMot_EN = 1
        steering_msg.AUTONOMOUS_SteeringMot_PWM = pwm  # Value for turning left
        self.steering_pub.publish(steering_msg)

    def steer_right(self,pwm):
        steering_msg = AUTONOMOUS_SteeringMot_Control()
        steering_msg.AUTONOMOUS_SteeringMot_EN = 1
        steering_msg.AUTONOMOUS_SteeringMot_PWM = pwm  # Value for turning right
        self.steering_pub.publish(steering_msg)

    def stop_steering(self):
        steering_msg = AUTONOMOUS_SteeringMot_Control()
        steering_msg.AUTONOMOUS_SteeringMot_EN = 0
        steering_msg.AUTONOMOUS_SteeringMot_PWM = 0
        self.steering_pub.publish(steering_msg)

    def apply_brake(self,percentage):
        if self.emergency_stop:
            rospy.loginfo("Emergency stop activated. Cannot apply brake.")
            return
        #Release throtle for break
        msg = RC_THRT_DATA()
        msg.RC_THRT_PEDAL_PRESS = 0
        msg.RC_THRT_PEDAL_POSITION = 0
        self.thrt_pub.publish(msg)
        time.sleep(0.1)
        rospy.loginfo("Applying brake")
        msg = AUTONOMOUS_BrakePedalControl()
        msg.AUTONOMOUS_BrakeMotor_Voltage = 1
        msg.AUTONOMOUS_BrakePedalMotor_PER = percentage
        msg.AUTONOMOUS_BrakePedalMotor_ACC = 10000
        msg.AUTONOMOUS_BrakePedalMotor_EN = 1
        self.brake_pub.publish(msg)
        


if __name__ == '__main__':
    try:
        rospy.init_node('autonomous_controller', anonymous=False)
        controller = AutonomousController() 
        controller.initialize_vehicle()
        rospy.spin()

    except rospy.ROSInterruptException:
        pass