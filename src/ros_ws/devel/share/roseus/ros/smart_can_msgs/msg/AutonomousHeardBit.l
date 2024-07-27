;; Auto-generated. Do not edit!


(when (boundp 'smart_can_msgs::AutonomousHeardBit)
  (if (not (find-package "SMART_CAN_MSGS"))
    (make-package "SMART_CAN_MSGS"))
  (shadow 'AutonomousHeardBit (find-package "SMART_CAN_MSGS")))
(unless (find-package "SMART_CAN_MSGS::AUTONOMOUSHEARDBIT")
  (make-package "SMART_CAN_MSGS::AUTONOMOUSHEARDBIT"))

(in-package "ROS")
;;//! \htmlinclude AutonomousHeardBit.msg.html


(defclass smart_can_msgs::AutonomousHeardBit
  :super ros::object
  :slots (_AutonomousManuelSelect ))

(defmethod smart_can_msgs::AutonomousHeardBit
  (:init
   (&key
    ((:AutonomousManuelSelect __AutonomousManuelSelect) 0)
    )
   (send-super :init)
   (setq _AutonomousManuelSelect (round __AutonomousManuelSelect))
   self)
  (:AutonomousManuelSelect
   (&optional __AutonomousManuelSelect)
   (if __AutonomousManuelSelect (setq _AutonomousManuelSelect __AutonomousManuelSelect)) _AutonomousManuelSelect)
  (:serialization-length
   ()
   (+
    ;; uint8 _AutonomousManuelSelect
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _AutonomousManuelSelect
       (write-byte _AutonomousManuelSelect s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _AutonomousManuelSelect
     (setq _AutonomousManuelSelect (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get smart_can_msgs::AutonomousHeardBit :md5sum-) "c39b595a65591df04cdfa147e70909cc")
(setf (get smart_can_msgs::AutonomousHeardBit :datatype-) "smart_can_msgs/AutonomousHeardBit")
(setf (get smart_can_msgs::AutonomousHeardBit :definition-)
      "uint8 AutonomousManuelSelect

")



(provide :smart_can_msgs/AutonomousHeardBit "c39b595a65591df04cdfa147e70909cc")


