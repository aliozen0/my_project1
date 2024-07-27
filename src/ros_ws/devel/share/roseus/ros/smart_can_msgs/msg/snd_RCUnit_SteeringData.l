;; Auto-generated. Do not edit!


(when (boundp 'smart_can_msgs::snd_RCUnit_SteeringData)
  (if (not (find-package "SMART_CAN_MSGS"))
    (make-package "SMART_CAN_MSGS"))
  (shadow 'snd_RCUnit_SteeringData (find-package "SMART_CAN_MSGS")))
(unless (find-package "SMART_CAN_MSGS::SND_RCUNIT_STEERINGDATA")
  (make-package "SMART_CAN_MSGS::SND_RCUNIT_STEERINGDATA"))

(in-package "ROS")
;;//! \htmlinclude snd_RCUnit_SteeringData.msg.html


(defclass smart_can_msgs::snd_RCUnit_SteeringData
  :super ros::object
  :slots (_RC_Steering_RightLimit _RC_Steering_LeftLimit _RC_SteeringPWM _RC_SteeringDirection ))

(defmethod smart_can_msgs::snd_RCUnit_SteeringData
  (:init
   (&key
    ((:RC_Steering_RightLimit __RC_Steering_RightLimit) 0)
    ((:RC_Steering_LeftLimit __RC_Steering_LeftLimit) 0)
    ((:RC_SteeringPWM __RC_SteeringPWM) 0)
    ((:RC_SteeringDirection __RC_SteeringDirection) 0)
    )
   (send-super :init)
   (setq _RC_Steering_RightLimit (round __RC_Steering_RightLimit))
   (setq _RC_Steering_LeftLimit (round __RC_Steering_LeftLimit))
   (setq _RC_SteeringPWM (round __RC_SteeringPWM))
   (setq _RC_SteeringDirection (round __RC_SteeringDirection))
   self)
  (:RC_Steering_RightLimit
   (&optional __RC_Steering_RightLimit)
   (if __RC_Steering_RightLimit (setq _RC_Steering_RightLimit __RC_Steering_RightLimit)) _RC_Steering_RightLimit)
  (:RC_Steering_LeftLimit
   (&optional __RC_Steering_LeftLimit)
   (if __RC_Steering_LeftLimit (setq _RC_Steering_LeftLimit __RC_Steering_LeftLimit)) _RC_Steering_LeftLimit)
  (:RC_SteeringPWM
   (&optional __RC_SteeringPWM)
   (if __RC_SteeringPWM (setq _RC_SteeringPWM __RC_SteeringPWM)) _RC_SteeringPWM)
  (:RC_SteeringDirection
   (&optional __RC_SteeringDirection)
   (if __RC_SteeringDirection (setq _RC_SteeringDirection __RC_SteeringDirection)) _RC_SteeringDirection)
  (:serialization-length
   ()
   (+
    ;; uint8 _RC_Steering_RightLimit
    1
    ;; uint8 _RC_Steering_LeftLimit
    1
    ;; uint16 _RC_SteeringPWM
    2
    ;; uint8 _RC_SteeringDirection
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _RC_Steering_RightLimit
       (write-byte _RC_Steering_RightLimit s)
     ;; uint8 _RC_Steering_LeftLimit
       (write-byte _RC_Steering_LeftLimit s)
     ;; uint16 _RC_SteeringPWM
       (write-word _RC_SteeringPWM s)
     ;; uint8 _RC_SteeringDirection
       (write-byte _RC_SteeringDirection s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _RC_Steering_RightLimit
     (setq _RC_Steering_RightLimit (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RC_Steering_LeftLimit
     (setq _RC_Steering_LeftLimit (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _RC_SteeringPWM
     (setq _RC_SteeringPWM (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _RC_SteeringDirection
     (setq _RC_SteeringDirection (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get smart_can_msgs::snd_RCUnit_SteeringData :md5sum-) "dbaee7c633defae17cb1a658b42efed0")
(setf (get smart_can_msgs::snd_RCUnit_SteeringData :datatype-) "smart_can_msgs/snd_RCUnit_SteeringData")
(setf (get smart_can_msgs::snd_RCUnit_SteeringData :definition-)
      "uint8 RC_Steering_RightLimit
uint8 RC_Steering_LeftLimit
uint16 RC_SteeringPWM
uint8 RC_SteeringDirection
")



(provide :smart_can_msgs/snd_RCUnit_SteeringData "dbaee7c633defae17cb1a658b42efed0")


