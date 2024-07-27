;; Auto-generated. Do not edit!


(when (boundp 'smart_can_msgs::kinematic_messages)
  (if (not (find-package "SMART_CAN_MSGS"))
    (make-package "SMART_CAN_MSGS"))
  (shadow 'kinematic_messages (find-package "SMART_CAN_MSGS")))
(unless (find-package "SMART_CAN_MSGS::KINEMATIC_MESSAGES")
  (make-package "SMART_CAN_MSGS::KINEMATIC_MESSAGES"))

(in-package "ROS")
;;//! \htmlinclude kinematic_messages.msg.html


(defclass smart_can_msgs::kinematic_messages
  :super ros::object
  :slots (_joint_type _angle _angle_y _angular_velocity _link_length ))

(defmethod smart_can_msgs::kinematic_messages
  (:init
   (&key
    ((:joint_type __joint_type) 0)
    ((:angle __angle) 0.0)
    ((:angle_y __angle_y) 0.0)
    ((:angular_velocity __angular_velocity) 0.0)
    ((:link_length __link_length) 0.0)
    )
   (send-super :init)
   (setq _joint_type (round __joint_type))
   (setq _angle (float __angle))
   (setq _angle_y (float __angle_y))
   (setq _angular_velocity (float __angular_velocity))
   (setq _link_length (float __link_length))
   self)
  (:joint_type
   (&optional __joint_type)
   (if __joint_type (setq _joint_type __joint_type)) _joint_type)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:angle_y
   (&optional __angle_y)
   (if __angle_y (setq _angle_y __angle_y)) _angle_y)
  (:angular_velocity
   (&optional __angular_velocity)
   (if __angular_velocity (setq _angular_velocity __angular_velocity)) _angular_velocity)
  (:link_length
   (&optional __link_length)
   (if __link_length (setq _link_length __link_length)) _link_length)
  (:serialization-length
   ()
   (+
    ;; uint8 _joint_type
    1
    ;; float32 _angle
    4
    ;; float32 _angle_y
    4
    ;; float32 _angular_velocity
    4
    ;; float32 _link_length
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _joint_type
       (write-byte _joint_type s)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_y
       (sys::poke _angle_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_velocity
       (sys::poke _angular_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _link_length
       (sys::poke _link_length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _joint_type
     (setq _joint_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_y
     (setq _angle_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_velocity
     (setq _angular_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _link_length
     (setq _link_length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get smart_can_msgs::kinematic_messages :md5sum-) "7bc7418ecb7fee03d277ee78209c3d4d")
(setf (get smart_can_msgs::kinematic_messages :datatype-) "smart_can_msgs/kinematic_messages")
(setf (get smart_can_msgs::kinematic_messages :definition-)
      "uint8 joint_type
float32 angle
float32 angle_y
float32 angular_velocity
float32 link_length

")



(provide :smart_can_msgs/kinematic_messages "7bc7418ecb7fee03d277ee78209c3d4d")


