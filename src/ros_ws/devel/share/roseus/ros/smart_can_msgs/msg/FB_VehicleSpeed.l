;; Auto-generated. Do not edit!


(when (boundp 'smart_can_msgs::FB_VehicleSpeed)
  (if (not (find-package "SMART_CAN_MSGS"))
    (make-package "SMART_CAN_MSGS"))
  (shadow 'FB_VehicleSpeed (find-package "SMART_CAN_MSGS")))
(unless (find-package "SMART_CAN_MSGS::FB_VEHICLESPEED")
  (make-package "SMART_CAN_MSGS::FB_VEHICLESPEED"))

(in-package "ROS")
;;//! \htmlinclude FB_VehicleSpeed.msg.html


(defclass smart_can_msgs::FB_VehicleSpeed
  :super ros::object
  :slots (_FB_VehicleSpeed_KMh _FB_ReelVehicleSpeed_KMh _FB_ReelVehicleSpeed_Ms ))

(defmethod smart_can_msgs::FB_VehicleSpeed
  (:init
   (&key
    ((:FB_VehicleSpeed_KMh __FB_VehicleSpeed_KMh) 0)
    ((:FB_ReelVehicleSpeed_KMh __FB_ReelVehicleSpeed_KMh) 0)
    ((:FB_ReelVehicleSpeed_Ms __FB_ReelVehicleSpeed_Ms) 0)
    )
   (send-super :init)
   (setq _FB_VehicleSpeed_KMh (round __FB_VehicleSpeed_KMh))
   (setq _FB_ReelVehicleSpeed_KMh (round __FB_ReelVehicleSpeed_KMh))
   (setq _FB_ReelVehicleSpeed_Ms (round __FB_ReelVehicleSpeed_Ms))
   self)
  (:FB_VehicleSpeed_KMh
   (&optional __FB_VehicleSpeed_KMh)
   (if __FB_VehicleSpeed_KMh (setq _FB_VehicleSpeed_KMh __FB_VehicleSpeed_KMh)) _FB_VehicleSpeed_KMh)
  (:FB_ReelVehicleSpeed_KMh
   (&optional __FB_ReelVehicleSpeed_KMh)
   (if __FB_ReelVehicleSpeed_KMh (setq _FB_ReelVehicleSpeed_KMh __FB_ReelVehicleSpeed_KMh)) _FB_ReelVehicleSpeed_KMh)
  (:FB_ReelVehicleSpeed_Ms
   (&optional __FB_ReelVehicleSpeed_Ms)
   (if __FB_ReelVehicleSpeed_Ms (setq _FB_ReelVehicleSpeed_Ms __FB_ReelVehicleSpeed_Ms)) _FB_ReelVehicleSpeed_Ms)
  (:serialization-length
   ()
   (+
    ;; uint8 _FB_VehicleSpeed_KMh
    1
    ;; uint8 _FB_ReelVehicleSpeed_KMh
    1
    ;; uint8 _FB_ReelVehicleSpeed_Ms
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _FB_VehicleSpeed_KMh
       (write-byte _FB_VehicleSpeed_KMh s)
     ;; uint8 _FB_ReelVehicleSpeed_KMh
       (write-byte _FB_ReelVehicleSpeed_KMh s)
     ;; uint8 _FB_ReelVehicleSpeed_Ms
       (write-byte _FB_ReelVehicleSpeed_Ms s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _FB_VehicleSpeed_KMh
     (setq _FB_VehicleSpeed_KMh (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_ReelVehicleSpeed_KMh
     (setq _FB_ReelVehicleSpeed_KMh (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_ReelVehicleSpeed_Ms
     (setq _FB_ReelVehicleSpeed_Ms (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get smart_can_msgs::FB_VehicleSpeed :md5sum-) "c33a97169dc1ce3d22f45b0581cd9f66")
(setf (get smart_can_msgs::FB_VehicleSpeed :datatype-) "smart_can_msgs/FB_VehicleSpeed")
(setf (get smart_can_msgs::FB_VehicleSpeed :definition-)
      "uint8 FB_VehicleSpeed_KMh
uint8 FB_ReelVehicleSpeed_KMh
uint8 FB_ReelVehicleSpeed_Ms
")



(provide :smart_can_msgs/FB_VehicleSpeed "c33a97169dc1ce3d22f45b0581cd9f66")


