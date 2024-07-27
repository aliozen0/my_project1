;; Auto-generated. Do not edit!


(when (boundp 'smart_can_msgs::AUTONOMOUS_HB_MotorControl)
  (if (not (find-package "SMART_CAN_MSGS"))
    (make-package "SMART_CAN_MSGS"))
  (shadow 'AUTONOMOUS_HB_MotorControl (find-package "SMART_CAN_MSGS")))
(unless (find-package "SMART_CAN_MSGS::AUTONOMOUS_HB_MOTORCONTROL")
  (make-package "SMART_CAN_MSGS::AUTONOMOUS_HB_MOTORCONTROL"))

(in-package "ROS")
;;//! \htmlinclude AUTONOMOUS_HB_MotorControl.msg.html


(defclass smart_can_msgs::AUTONOMOUS_HB_MotorControl
  :super ros::object
  :slots (_AUTONOMOUS_HB_Motor_PWM _AUTONOMOUS_HB_MotState _AUTONOMOUS_HB_MotEN ))

(defmethod smart_can_msgs::AUTONOMOUS_HB_MotorControl
  (:init
   (&key
    ((:AUTONOMOUS_HB_Motor_PWM __AUTONOMOUS_HB_Motor_PWM) 0)
    ((:AUTONOMOUS_HB_MotState __AUTONOMOUS_HB_MotState) 0)
    ((:AUTONOMOUS_HB_MotEN __AUTONOMOUS_HB_MotEN) 0)
    )
   (send-super :init)
   (setq _AUTONOMOUS_HB_Motor_PWM (round __AUTONOMOUS_HB_Motor_PWM))
   (setq _AUTONOMOUS_HB_MotState (round __AUTONOMOUS_HB_MotState))
   (setq _AUTONOMOUS_HB_MotEN (round __AUTONOMOUS_HB_MotEN))
   self)
  (:AUTONOMOUS_HB_Motor_PWM
   (&optional __AUTONOMOUS_HB_Motor_PWM)
   (if __AUTONOMOUS_HB_Motor_PWM (setq _AUTONOMOUS_HB_Motor_PWM __AUTONOMOUS_HB_Motor_PWM)) _AUTONOMOUS_HB_Motor_PWM)
  (:AUTONOMOUS_HB_MotState
   (&optional __AUTONOMOUS_HB_MotState)
   (if __AUTONOMOUS_HB_MotState (setq _AUTONOMOUS_HB_MotState __AUTONOMOUS_HB_MotState)) _AUTONOMOUS_HB_MotState)
  (:AUTONOMOUS_HB_MotEN
   (&optional __AUTONOMOUS_HB_MotEN)
   (if __AUTONOMOUS_HB_MotEN (setq _AUTONOMOUS_HB_MotEN __AUTONOMOUS_HB_MotEN)) _AUTONOMOUS_HB_MotEN)
  (:serialization-length
   ()
   (+
    ;; uint8 _AUTONOMOUS_HB_Motor_PWM
    1
    ;; uint8 _AUTONOMOUS_HB_MotState
    1
    ;; uint8 _AUTONOMOUS_HB_MotEN
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _AUTONOMOUS_HB_Motor_PWM
       (write-byte _AUTONOMOUS_HB_Motor_PWM s)
     ;; uint8 _AUTONOMOUS_HB_MotState
       (write-byte _AUTONOMOUS_HB_MotState s)
     ;; uint8 _AUTONOMOUS_HB_MotEN
       (write-byte _AUTONOMOUS_HB_MotEN s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _AUTONOMOUS_HB_Motor_PWM
     (setq _AUTONOMOUS_HB_Motor_PWM (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _AUTONOMOUS_HB_MotState
     (setq _AUTONOMOUS_HB_MotState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _AUTONOMOUS_HB_MotEN
     (setq _AUTONOMOUS_HB_MotEN (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get smart_can_msgs::AUTONOMOUS_HB_MotorControl :md5sum-) "5bce3dd6587bd24ef1eee71abfb3adf7")
(setf (get smart_can_msgs::AUTONOMOUS_HB_MotorControl :datatype-) "smart_can_msgs/AUTONOMOUS_HB_MotorControl")
(setf (get smart_can_msgs::AUTONOMOUS_HB_MotorControl :definition-)
      "uint8 AUTONOMOUS_HB_Motor_PWM
uint8 AUTONOMOUS_HB_MotState
uint8 AUTONOMOUS_HB_MotEN
")



(provide :smart_can_msgs/AUTONOMOUS_HB_MotorControl "5bce3dd6587bd24ef1eee71abfb3adf7")


