;; Auto-generated. Do not edit!


(when (boundp 'smart_can_msgs::dis_messages)
  (if (not (find-package "SMART_CAN_MSGS"))
    (make-package "SMART_CAN_MSGS"))
  (shadow 'dis_messages (find-package "SMART_CAN_MSGS")))
(unless (find-package "SMART_CAN_MSGS::DIS_MESSAGES")
  (make-package "SMART_CAN_MSGS::DIS_MESSAGES"))

(in-package "ROS")
;;//! \htmlinclude dis_messages.msg.html


(defclass smart_can_msgs::dis_messages
  :super ros::object
  :slots (_angle ))

(defmethod smart_can_msgs::dis_messages
  (:init
   (&key
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _angle (float __angle))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; float32 _angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get smart_can_msgs::dis_messages :md5sum-) "2d11dcdbe5a6f73dd324353dc52315ab")
(setf (get smart_can_msgs::dis_messages :datatype-) "smart_can_msgs/dis_messages")
(setf (get smart_can_msgs::dis_messages :definition-)
      "float32 angle
")



(provide :smart_can_msgs/dis_messages "2d11dcdbe5a6f73dd324353dc52315ab")


