;; Auto-generated. Do not edit!


(when (boundp 'smart_can_msgs::snd_RCUnit_HandBrakeData)
  (if (not (find-package "SMART_CAN_MSGS"))
    (make-package "SMART_CAN_MSGS"))
  (shadow 'snd_RCUnit_HandBrakeData (find-package "SMART_CAN_MSGS")))
(unless (find-package "SMART_CAN_MSGS::SND_RCUNIT_HANDBRAKEDATA")
  (make-package "SMART_CAN_MSGS::SND_RCUNIT_HANDBRAKEDATA"))

(in-package "ROS")
;;//! \htmlinclude snd_RCUnit_HandBrakeData.msg.html


(defclass smart_can_msgs::snd_RCUnit_HandBrakeData
  :super ros::object
  :slots (_RC_HB_PwmValue _RC_HandBrake_PRESS _RC_HandBrake_FREE _RC_HandBrakeData ))

(defmethod smart_can_msgs::snd_RCUnit_HandBrakeData
  (:init
   (&key
    ((:RC_HB_PwmValue __RC_HB_PwmValue) 0)
    ((:RC_HandBrake_PRESS __RC_HandBrake_PRESS) 0)
    ((:RC_HandBrake_FREE __RC_HandBrake_FREE) 0)
    ((:RC_HandBrakeData __RC_HandBrakeData) 0)
    )
   (send-super :init)
   (setq _RC_HB_PwmValue (round __RC_HB_PwmValue))
   (setq _RC_HandBrake_PRESS (round __RC_HandBrake_PRESS))
   (setq _RC_HandBrake_FREE (round __RC_HandBrake_FREE))
   (setq _RC_HandBrakeData (round __RC_HandBrakeData))
   self)
  (:RC_HB_PwmValue
   (&optional __RC_HB_PwmValue)
   (if __RC_HB_PwmValue (setq _RC_HB_PwmValue __RC_HB_PwmValue)) _RC_HB_PwmValue)
  (:RC_HandBrake_PRESS
   (&optional __RC_HandBrake_PRESS)
   (if __RC_HandBrake_PRESS (setq _RC_HandBrake_PRESS __RC_HandBrake_PRESS)) _RC_HandBrake_PRESS)
  (:RC_HandBrake_FREE
   (&optional __RC_HandBrake_FREE)
   (if __RC_HandBrake_FREE (setq _RC_HandBrake_FREE __RC_HandBrake_FREE)) _RC_HandBrake_FREE)
  (:RC_HandBrakeData
   (&optional __RC_HandBrakeData)
   (if __RC_HandBrakeData (setq _RC_HandBrakeData __RC_HandBrakeData)) _RC_HandBrakeData)
  (:serialization-length
   ()
   (+
    ;; uint16 _RC_HB_PwmValue
    2
    ;; uint8 _RC_HandBrake_PRESS
    1
    ;; uint8 _RC_HandBrake_FREE
    1
    ;; uint8 _RC_HandBrakeData
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _RC_HB_PwmValue
       (write-word _RC_HB_PwmValue s)
     ;; uint8 _RC_HandBrake_PRESS
       (write-byte _RC_HandBrake_PRESS s)
     ;; uint8 _RC_HandBrake_FREE
       (write-byte _RC_HandBrake_FREE s)
     ;; uint8 _RC_HandBrakeData
       (write-byte _RC_HandBrakeData s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _RC_HB_PwmValue
     (setq _RC_HB_PwmValue (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _RC_HandBrake_PRESS
     (setq _RC_HandBrake_PRESS (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RC_HandBrake_FREE
     (setq _RC_HandBrake_FREE (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RC_HandBrakeData
     (setq _RC_HandBrakeData (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get smart_can_msgs::snd_RCUnit_HandBrakeData :md5sum-) "faee69d41fe0c8f41ca0166523232a9b")
(setf (get smart_can_msgs::snd_RCUnit_HandBrakeData :datatype-) "smart_can_msgs/snd_RCUnit_HandBrakeData")
(setf (get smart_can_msgs::snd_RCUnit_HandBrakeData :definition-)
      "uint16 RC_HB_PwmValue
uint8 RC_HandBrake_PRESS
uint8 RC_HandBrake_FREE
uint8 RC_HandBrakeData
")



(provide :smart_can_msgs/snd_RCUnit_HandBrakeData "faee69d41fe0c8f41ca0166523232a9b")


