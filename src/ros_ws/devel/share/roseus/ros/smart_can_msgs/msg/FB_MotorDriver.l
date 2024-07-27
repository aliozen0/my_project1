;; Auto-generated. Do not edit!


(when (boundp 'smart_can_msgs::FB_MotorDriver)
  (if (not (find-package "SMART_CAN_MSGS"))
    (make-package "SMART_CAN_MSGS"))
  (shadow 'FB_MotorDriver (find-package "SMART_CAN_MSGS")))
(unless (find-package "SMART_CAN_MSGS::FB_MOTORDRIVER")
  (make-package "SMART_CAN_MSGS::FB_MOTORDRIVER"))

(in-package "ROS")
;;//! \htmlinclude FB_MotorDriver.msg.html


(defclass smart_can_msgs::FB_MotorDriver
  :super ros::object
  :slots (_GEAR_STATUS_FROM_MOTOR _PlusTripDistance _VehicleRPM ))

(defmethod smart_can_msgs::FB_MotorDriver
  (:init
   (&key
    ((:GEAR_STATUS_FROM_MOTOR __GEAR_STATUS_FROM_MOTOR) 0)
    ((:PlusTripDistance __PlusTripDistance) 0)
    ((:VehicleRPM __VehicleRPM) 0)
    )
   (send-super :init)
   (setq _GEAR_STATUS_FROM_MOTOR (round __GEAR_STATUS_FROM_MOTOR))
   (setq _PlusTripDistance (round __PlusTripDistance))
   (setq _VehicleRPM (round __VehicleRPM))
   self)
  (:GEAR_STATUS_FROM_MOTOR
   (&optional __GEAR_STATUS_FROM_MOTOR)
   (if __GEAR_STATUS_FROM_MOTOR (setq _GEAR_STATUS_FROM_MOTOR __GEAR_STATUS_FROM_MOTOR)) _GEAR_STATUS_FROM_MOTOR)
  (:PlusTripDistance
   (&optional __PlusTripDistance)
   (if __PlusTripDistance (setq _PlusTripDistance __PlusTripDistance)) _PlusTripDistance)
  (:VehicleRPM
   (&optional __VehicleRPM)
   (if __VehicleRPM (setq _VehicleRPM __VehicleRPM)) _VehicleRPM)
  (:serialization-length
   ()
   (+
    ;; uint8 _GEAR_STATUS_FROM_MOTOR
    1
    ;; uint16 _PlusTripDistance
    2
    ;; uint16 _VehicleRPM
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _GEAR_STATUS_FROM_MOTOR
       (write-byte _GEAR_STATUS_FROM_MOTOR s)
     ;; uint16 _PlusTripDistance
       (write-word _PlusTripDistance s)
     ;; uint16 _VehicleRPM
       (write-word _VehicleRPM s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _GEAR_STATUS_FROM_MOTOR
     (setq _GEAR_STATUS_FROM_MOTOR (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _PlusTripDistance
     (setq _PlusTripDistance (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _VehicleRPM
     (setq _VehicleRPM (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get smart_can_msgs::FB_MotorDriver :md5sum-) "ee0fe8cee4053ab7ab54decef9676a69")
(setf (get smart_can_msgs::FB_MotorDriver :datatype-) "smart_can_msgs/FB_MotorDriver")
(setf (get smart_can_msgs::FB_MotorDriver :definition-)
      "uint8 GEAR_STATUS_FROM_MOTOR
uint16 PlusTripDistance
uint16 VehicleRPM
")



(provide :smart_can_msgs/FB_MotorDriver "ee0fe8cee4053ab7ab54decef9676a69")


