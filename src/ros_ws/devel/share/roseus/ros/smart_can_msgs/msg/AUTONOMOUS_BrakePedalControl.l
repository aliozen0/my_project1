;; Auto-generated. Do not edit!


(when (boundp 'smart_can_msgs::AUTONOMOUS_BrakePedalControl)
  (if (not (find-package "SMART_CAN_MSGS"))
    (make-package "SMART_CAN_MSGS"))
  (shadow 'AUTONOMOUS_BrakePedalControl (find-package "SMART_CAN_MSGS")))
(unless (find-package "SMART_CAN_MSGS::AUTONOMOUS_BRAKEPEDALCONTROL")
  (make-package "SMART_CAN_MSGS::AUTONOMOUS_BRAKEPEDALCONTROL"))

(in-package "ROS")
;;//! \htmlinclude AUTONOMOUS_BrakePedalControl.msg.html


(defclass smart_can_msgs::AUTONOMOUS_BrakePedalControl
  :super ros::object
  :slots (_AUTONOMOUS_BrakeMotor_Voltage _AUTONOMOUS_BrakePedalMotor_PER _AUTONOMOUS_BrakePedalMotor_ACC _AUTONOMOUS_BrakePedalMotor_EN ))

(defmethod smart_can_msgs::AUTONOMOUS_BrakePedalControl
  (:init
   (&key
    ((:AUTONOMOUS_BrakeMotor_Voltage __AUTONOMOUS_BrakeMotor_Voltage) 0)
    ((:AUTONOMOUS_BrakePedalMotor_PER __AUTONOMOUS_BrakePedalMotor_PER) 0)
    ((:AUTONOMOUS_BrakePedalMotor_ACC __AUTONOMOUS_BrakePedalMotor_ACC) 0)
    ((:AUTONOMOUS_BrakePedalMotor_EN __AUTONOMOUS_BrakePedalMotor_EN) 0)
    )
   (send-super :init)
   (setq _AUTONOMOUS_BrakeMotor_Voltage (round __AUTONOMOUS_BrakeMotor_Voltage))
   (setq _AUTONOMOUS_BrakePedalMotor_PER (round __AUTONOMOUS_BrakePedalMotor_PER))
   (setq _AUTONOMOUS_BrakePedalMotor_ACC (round __AUTONOMOUS_BrakePedalMotor_ACC))
   (setq _AUTONOMOUS_BrakePedalMotor_EN (round __AUTONOMOUS_BrakePedalMotor_EN))
   self)
  (:AUTONOMOUS_BrakeMotor_Voltage
   (&optional __AUTONOMOUS_BrakeMotor_Voltage)
   (if __AUTONOMOUS_BrakeMotor_Voltage (setq _AUTONOMOUS_BrakeMotor_Voltage __AUTONOMOUS_BrakeMotor_Voltage)) _AUTONOMOUS_BrakeMotor_Voltage)
  (:AUTONOMOUS_BrakePedalMotor_PER
   (&optional __AUTONOMOUS_BrakePedalMotor_PER)
   (if __AUTONOMOUS_BrakePedalMotor_PER (setq _AUTONOMOUS_BrakePedalMotor_PER __AUTONOMOUS_BrakePedalMotor_PER)) _AUTONOMOUS_BrakePedalMotor_PER)
  (:AUTONOMOUS_BrakePedalMotor_ACC
   (&optional __AUTONOMOUS_BrakePedalMotor_ACC)
   (if __AUTONOMOUS_BrakePedalMotor_ACC (setq _AUTONOMOUS_BrakePedalMotor_ACC __AUTONOMOUS_BrakePedalMotor_ACC)) _AUTONOMOUS_BrakePedalMotor_ACC)
  (:AUTONOMOUS_BrakePedalMotor_EN
   (&optional __AUTONOMOUS_BrakePedalMotor_EN)
   (if __AUTONOMOUS_BrakePedalMotor_EN (setq _AUTONOMOUS_BrakePedalMotor_EN __AUTONOMOUS_BrakePedalMotor_EN)) _AUTONOMOUS_BrakePedalMotor_EN)
  (:serialization-length
   ()
   (+
    ;; uint8 _AUTONOMOUS_BrakeMotor_Voltage
    1
    ;; uint8 _AUTONOMOUS_BrakePedalMotor_PER
    1
    ;; uint16 _AUTONOMOUS_BrakePedalMotor_ACC
    2
    ;; uint8 _AUTONOMOUS_BrakePedalMotor_EN
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _AUTONOMOUS_BrakeMotor_Voltage
       (write-byte _AUTONOMOUS_BrakeMotor_Voltage s)
     ;; uint8 _AUTONOMOUS_BrakePedalMotor_PER
       (write-byte _AUTONOMOUS_BrakePedalMotor_PER s)
     ;; uint16 _AUTONOMOUS_BrakePedalMotor_ACC
       (write-word _AUTONOMOUS_BrakePedalMotor_ACC s)
     ;; uint8 _AUTONOMOUS_BrakePedalMotor_EN
       (write-byte _AUTONOMOUS_BrakePedalMotor_EN s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _AUTONOMOUS_BrakeMotor_Voltage
     (setq _AUTONOMOUS_BrakeMotor_Voltage (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _AUTONOMOUS_BrakePedalMotor_PER
     (setq _AUTONOMOUS_BrakePedalMotor_PER (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _AUTONOMOUS_BrakePedalMotor_ACC
     (setq _AUTONOMOUS_BrakePedalMotor_ACC (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _AUTONOMOUS_BrakePedalMotor_EN
     (setq _AUTONOMOUS_BrakePedalMotor_EN (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get smart_can_msgs::AUTONOMOUS_BrakePedalControl :md5sum-) "abb8668963ba2b5c76295810f98dea37")
(setf (get smart_can_msgs::AUTONOMOUS_BrakePedalControl :datatype-) "smart_can_msgs/AUTONOMOUS_BrakePedalControl")
(setf (get smart_can_msgs::AUTONOMOUS_BrakePedalControl :definition-)
      "uint8 AUTONOMOUS_BrakeMotor_Voltage
uint8 AUTONOMOUS_BrakePedalMotor_PER
uint16 AUTONOMOUS_BrakePedalMotor_ACC
uint8 AUTONOMOUS_BrakePedalMotor_EN
")



(provide :smart_can_msgs/AUTONOMOUS_BrakePedalControl "abb8668963ba2b5c76295810f98dea37")


