;; Auto-generated. Do not edit!


(when (boundp 'smart_can_msgs::snd_RCUnit_BrakeData)
  (if (not (find-package "SMART_CAN_MSGS"))
    (make-package "SMART_CAN_MSGS"))
  (shadow 'snd_RCUnit_BrakeData (find-package "SMART_CAN_MSGS")))
(unless (find-package "SMART_CAN_MSGS::SND_RCUNIT_BRAKEDATA")
  (make-package "SMART_CAN_MSGS::SND_RCUNIT_BRAKEDATA"))

(in-package "ROS")
;;//! \htmlinclude snd_RCUnit_BrakeData.msg.html


(defclass smart_can_msgs::snd_RCUnit_BrakeData
  :super ros::object
  :slots (_RC_BrakePedal_Speed _RC_BrakePedal_Acc _RC_BrakePedal_Pos ))

(defmethod smart_can_msgs::snd_RCUnit_BrakeData
  (:init
   (&key
    ((:RC_BrakePedal_Speed __RC_BrakePedal_Speed) 0)
    ((:RC_BrakePedal_Acc __RC_BrakePedal_Acc) 0)
    ((:RC_BrakePedal_Pos __RC_BrakePedal_Pos) 0)
    )
   (send-super :init)
   (setq _RC_BrakePedal_Speed (round __RC_BrakePedal_Speed))
   (setq _RC_BrakePedal_Acc (round __RC_BrakePedal_Acc))
   (setq _RC_BrakePedal_Pos (round __RC_BrakePedal_Pos))
   self)
  (:RC_BrakePedal_Speed
   (&optional __RC_BrakePedal_Speed)
   (if __RC_BrakePedal_Speed (setq _RC_BrakePedal_Speed __RC_BrakePedal_Speed)) _RC_BrakePedal_Speed)
  (:RC_BrakePedal_Acc
   (&optional __RC_BrakePedal_Acc)
   (if __RC_BrakePedal_Acc (setq _RC_BrakePedal_Acc __RC_BrakePedal_Acc)) _RC_BrakePedal_Acc)
  (:RC_BrakePedal_Pos
   (&optional __RC_BrakePedal_Pos)
   (if __RC_BrakePedal_Pos (setq _RC_BrakePedal_Pos __RC_BrakePedal_Pos)) _RC_BrakePedal_Pos)
  (:serialization-length
   ()
   (+
    ;; uint16 _RC_BrakePedal_Speed
    2
    ;; uint16 _RC_BrakePedal_Acc
    2
    ;; uint8 _RC_BrakePedal_Pos
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _RC_BrakePedal_Speed
       (write-word _RC_BrakePedal_Speed s)
     ;; uint16 _RC_BrakePedal_Acc
       (write-word _RC_BrakePedal_Acc s)
     ;; uint8 _RC_BrakePedal_Pos
       (write-byte _RC_BrakePedal_Pos s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _RC_BrakePedal_Speed
     (setq _RC_BrakePedal_Speed (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _RC_BrakePedal_Acc
     (setq _RC_BrakePedal_Acc (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _RC_BrakePedal_Pos
     (setq _RC_BrakePedal_Pos (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get smart_can_msgs::snd_RCUnit_BrakeData :md5sum-) "650ea666f66da37d4464c1053ef96d40")
(setf (get smart_can_msgs::snd_RCUnit_BrakeData :datatype-) "smart_can_msgs/snd_RCUnit_BrakeData")
(setf (get smart_can_msgs::snd_RCUnit_BrakeData :definition-)
      "uint16 RC_BrakePedal_Speed
uint16 RC_BrakePedal_Acc
uint8 RC_BrakePedal_Pos
")



(provide :smart_can_msgs/snd_RCUnit_BrakeData "650ea666f66da37d4464c1053ef96d40")


