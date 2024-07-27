;; Auto-generated. Do not edit!


(when (boundp 'smart_can_msgs::Feedback_SENSOR)
  (if (not (find-package "SMART_CAN_MSGS"))
    (make-package "SMART_CAN_MSGS"))
  (shadow 'Feedback_SENSOR (find-package "SMART_CAN_MSGS")))
(unless (find-package "SMART_CAN_MSGS::FEEDBACK_SENSOR")
  (make-package "SMART_CAN_MSGS::FEEDBACK_SENSOR"))

(in-package "ROS")
;;//! \htmlinclude Feedback_SENSOR.msg.html


(defclass smart_can_msgs::Feedback_SENSOR
  :super ros::object
  :slots (_SteeringAngleSensor ))

(defmethod smart_can_msgs::Feedback_SENSOR
  (:init
   (&key
    ((:SteeringAngleSensor __SteeringAngleSensor) 0)
    )
   (send-super :init)
   (setq _SteeringAngleSensor (round __SteeringAngleSensor))
   self)
  (:SteeringAngleSensor
   (&optional __SteeringAngleSensor)
   (if __SteeringAngleSensor (setq _SteeringAngleSensor __SteeringAngleSensor)) _SteeringAngleSensor)
  (:serialization-length
   ()
   (+
    ;; uint16 _SteeringAngleSensor
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _SteeringAngleSensor
       (write-word _SteeringAngleSensor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _SteeringAngleSensor
     (setq _SteeringAngleSensor (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get smart_can_msgs::Feedback_SENSOR :md5sum-) "810c1cfb4931d86ae219b3ad3c45ed05")
(setf (get smart_can_msgs::Feedback_SENSOR :datatype-) "smart_can_msgs/Feedback_SENSOR")
(setf (get smart_can_msgs::Feedback_SENSOR :definition-)
      "uint16 SteeringAngleSensor

")



(provide :smart_can_msgs/Feedback_SENSOR "810c1cfb4931d86ae219b3ad3c45ed05")


