;; Auto-generated. Do not edit!


(when (boundp 'smart_can_msgs::AUTONOMOUS_SteeringMot_Control)
  (if (not (find-package "SMART_CAN_MSGS"))
    (make-package "SMART_CAN_MSGS"))
  (shadow 'AUTONOMOUS_SteeringMot_Control (find-package "SMART_CAN_MSGS")))
(unless (find-package "SMART_CAN_MSGS::AUTONOMOUS_STEERINGMOT_CONTROL")
  (make-package "SMART_CAN_MSGS::AUTONOMOUS_STEERINGMOT_CONTROL"))

(in-package "ROS")
;;//! \htmlinclude AUTONOMOUS_SteeringMot_Control.msg.html


(defclass smart_can_msgs::AUTONOMOUS_SteeringMot_Control
  :super ros::object
  :slots (_AUTONOMOUS_SteeringMot_EN _AUTONOMOUS_SteeringMot_PWM ))

(defmethod smart_can_msgs::AUTONOMOUS_SteeringMot_Control
  (:init
   (&key
    ((:AUTONOMOUS_SteeringMot_EN __AUTONOMOUS_SteeringMot_EN) 0)
    ((:AUTONOMOUS_SteeringMot_PWM __AUTONOMOUS_SteeringMot_PWM) 0)
    )
   (send-super :init)
   (setq _AUTONOMOUS_SteeringMot_EN (round __AUTONOMOUS_SteeringMot_EN))
   (setq _AUTONOMOUS_SteeringMot_PWM (round __AUTONOMOUS_SteeringMot_PWM))
   self)
  (:AUTONOMOUS_SteeringMot_EN
   (&optional __AUTONOMOUS_SteeringMot_EN)
   (if __AUTONOMOUS_SteeringMot_EN (setq _AUTONOMOUS_SteeringMot_EN __AUTONOMOUS_SteeringMot_EN)) _AUTONOMOUS_SteeringMot_EN)
  (:AUTONOMOUS_SteeringMot_PWM
   (&optional __AUTONOMOUS_SteeringMot_PWM)
   (if __AUTONOMOUS_SteeringMot_PWM (setq _AUTONOMOUS_SteeringMot_PWM __AUTONOMOUS_SteeringMot_PWM)) _AUTONOMOUS_SteeringMot_PWM)
  (:serialization-length
   ()
   (+
    ;; uint8 _AUTONOMOUS_SteeringMot_EN
    1
    ;; uint8 _AUTONOMOUS_SteeringMot_PWM
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _AUTONOMOUS_SteeringMot_EN
       (write-byte _AUTONOMOUS_SteeringMot_EN s)
     ;; uint8 _AUTONOMOUS_SteeringMot_PWM
       (write-byte _AUTONOMOUS_SteeringMot_PWM s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _AUTONOMOUS_SteeringMot_EN
     (setq _AUTONOMOUS_SteeringMot_EN (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _AUTONOMOUS_SteeringMot_PWM
     (setq _AUTONOMOUS_SteeringMot_PWM (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get smart_can_msgs::AUTONOMOUS_SteeringMot_Control :md5sum-) "ff6e7bebf0a430b5352684aa87189522")
(setf (get smart_can_msgs::AUTONOMOUS_SteeringMot_Control :datatype-) "smart_can_msgs/AUTONOMOUS_SteeringMot_Control")
(setf (get smart_can_msgs::AUTONOMOUS_SteeringMot_Control :definition-)
      "uint8 AUTONOMOUS_SteeringMot_EN
uint8 AUTONOMOUS_SteeringMot_PWM
")



(provide :smart_can_msgs/AUTONOMOUS_SteeringMot_Control "ff6e7bebf0a430b5352684aa87189522")


