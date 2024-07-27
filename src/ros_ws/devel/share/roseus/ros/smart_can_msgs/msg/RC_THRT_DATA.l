;; Auto-generated. Do not edit!


(when (boundp 'smart_can_msgs::RC_THRT_DATA)
  (if (not (find-package "SMART_CAN_MSGS"))
    (make-package "SMART_CAN_MSGS"))
  (shadow 'RC_THRT_DATA (find-package "SMART_CAN_MSGS")))
(unless (find-package "SMART_CAN_MSGS::RC_THRT_DATA")
  (make-package "SMART_CAN_MSGS::RC_THRT_DATA"))

(in-package "ROS")
;;//! \htmlinclude RC_THRT_DATA.msg.html


(defclass smart_can_msgs::RC_THRT_DATA
  :super ros::object
  :slots (_RC_THRT_PEDAL_POSITION _RC_THRT_PEDAL_PRESS ))

(defmethod smart_can_msgs::RC_THRT_DATA
  (:init
   (&key
    ((:RC_THRT_PEDAL_POSITION __RC_THRT_PEDAL_POSITION) 0)
    ((:RC_THRT_PEDAL_PRESS __RC_THRT_PEDAL_PRESS) 0)
    )
   (send-super :init)
   (setq _RC_THRT_PEDAL_POSITION (round __RC_THRT_PEDAL_POSITION))
   (setq _RC_THRT_PEDAL_PRESS (round __RC_THRT_PEDAL_PRESS))
   self)
  (:RC_THRT_PEDAL_POSITION
   (&optional __RC_THRT_PEDAL_POSITION)
   (if __RC_THRT_PEDAL_POSITION (setq _RC_THRT_PEDAL_POSITION __RC_THRT_PEDAL_POSITION)) _RC_THRT_PEDAL_POSITION)
  (:RC_THRT_PEDAL_PRESS
   (&optional __RC_THRT_PEDAL_PRESS)
   (if __RC_THRT_PEDAL_PRESS (setq _RC_THRT_PEDAL_PRESS __RC_THRT_PEDAL_PRESS)) _RC_THRT_PEDAL_PRESS)
  (:serialization-length
   ()
   (+
    ;; uint8 _RC_THRT_PEDAL_POSITION
    1
    ;; uint8 _RC_THRT_PEDAL_PRESS
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _RC_THRT_PEDAL_POSITION
       (write-byte _RC_THRT_PEDAL_POSITION s)
     ;; uint8 _RC_THRT_PEDAL_PRESS
       (write-byte _RC_THRT_PEDAL_PRESS s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _RC_THRT_PEDAL_POSITION
     (setq _RC_THRT_PEDAL_POSITION (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RC_THRT_PEDAL_PRESS
     (setq _RC_THRT_PEDAL_PRESS (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get smart_can_msgs::RC_THRT_DATA :md5sum-) "16f66a8758944d1f785808e5231f5e93")
(setf (get smart_can_msgs::RC_THRT_DATA :datatype-) "smart_can_msgs/RC_THRT_DATA")
(setf (get smart_can_msgs::RC_THRT_DATA :definition-)
      "uint8 RC_THRT_PEDAL_POSITION
uint8 RC_THRT_PEDAL_PRESS
")



(provide :smart_can_msgs/RC_THRT_DATA "16f66a8758944d1f785808e5231f5e93")


