;; Auto-generated. Do not edit!


(when (boundp 'smart_can_msgs::kinematic_settings)
  (if (not (find-package "SMART_CAN_MSGS"))
    (make-package "SMART_CAN_MSGS"))
  (shadow 'kinematic_settings (find-package "SMART_CAN_MSGS")))
(unless (find-package "SMART_CAN_MSGS::KINEMATIC_SETTINGS")
  (make-package "SMART_CAN_MSGS::KINEMATIC_SETTINGS"))

(in-package "ROS")
;;//! \htmlinclude kinematic_settings.msg.html


(defclass smart_can_msgs::kinematic_settings
  :super ros::object
  :slots (_kinematics _enable ))

(defmethod smart_can_msgs::kinematic_settings
  (:init
   (&key
    ((:kinematics __kinematics) 0)
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _kinematics (round __kinematics))
   (setq _enable __enable)
   self)
  (:kinematics
   (&optional __kinematics)
   (if __kinematics (setq _kinematics __kinematics)) _kinematics)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; uint8 _kinematics
    1
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _kinematics
       (write-byte _kinematics s)
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _kinematics
     (setq _kinematics (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get smart_can_msgs::kinematic_settings :md5sum-) "cd0a182ea13ba72984dfa70a9b4dc4da")
(setf (get smart_can_msgs::kinematic_settings :datatype-) "smart_can_msgs/kinematic_settings")
(setf (get smart_can_msgs::kinematic_settings :definition-)
      "uint8 kinematics
bool enable


")



(provide :smart_can_msgs/kinematic_settings "cd0a182ea13ba72984dfa70a9b4dc4da")


