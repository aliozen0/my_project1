;; Auto-generated. Do not edit!


(when (boundp 'smart_can_msgs::rc_unittoOmux)
  (if (not (find-package "SMART_CAN_MSGS"))
    (make-package "SMART_CAN_MSGS"))
  (shadow 'rc_unittoOmux (find-package "SMART_CAN_MSGS")))
(unless (find-package "SMART_CAN_MSGS::RC_UNITTOOMUX")
  (make-package "SMART_CAN_MSGS::RC_UNITTOOMUX"))

(in-package "ROS")
;;//! \htmlinclude rc_unittoOmux.msg.html


(defclass smart_can_msgs::rc_unittoOmux
  :super ros::object
  :slots (_AUTONOMOUS_EMERGENCY _RC_WindowResintance _RC_InteriorLight _RC_ReverseLight _RC_DRL _RC_BrakeLight _AUTONOMOUS_DOOR_OPEN _AUTONOMOUS_DOOR_CLOSE _RC_SignalStatus _RC_LowBeam _RC_HighBeam _RC_SelectionGear _RC_Ignition ))

(defmethod smart_can_msgs::rc_unittoOmux
  (:init
   (&key
    ((:AUTONOMOUS_EMERGENCY __AUTONOMOUS_EMERGENCY) 0)
    ((:RC_WindowResintance __RC_WindowResintance) 0)
    ((:RC_InteriorLight __RC_InteriorLight) 0)
    ((:RC_ReverseLight __RC_ReverseLight) 0)
    ((:RC_DRL __RC_DRL) 0)
    ((:RC_BrakeLight __RC_BrakeLight) 0)
    ((:AUTONOMOUS_DOOR_OPEN __AUTONOMOUS_DOOR_OPEN) 0)
    ((:AUTONOMOUS_DOOR_CLOSE __AUTONOMOUS_DOOR_CLOSE) 0)
    ((:RC_SignalStatus __RC_SignalStatus) 0)
    ((:RC_LowBeam __RC_LowBeam) 0)
    ((:RC_HighBeam __RC_HighBeam) 0)
    ((:RC_SelectionGear __RC_SelectionGear) 0)
    ((:RC_Ignition __RC_Ignition) 0)
    )
   (send-super :init)
   (setq _AUTONOMOUS_EMERGENCY (round __AUTONOMOUS_EMERGENCY))
   (setq _RC_WindowResintance (round __RC_WindowResintance))
   (setq _RC_InteriorLight (round __RC_InteriorLight))
   (setq _RC_ReverseLight (round __RC_ReverseLight))
   (setq _RC_DRL (round __RC_DRL))
   (setq _RC_BrakeLight (round __RC_BrakeLight))
   (setq _AUTONOMOUS_DOOR_OPEN (round __AUTONOMOUS_DOOR_OPEN))
   (setq _AUTONOMOUS_DOOR_CLOSE (round __AUTONOMOUS_DOOR_CLOSE))
   (setq _RC_SignalStatus (round __RC_SignalStatus))
   (setq _RC_LowBeam (round __RC_LowBeam))
   (setq _RC_HighBeam (round __RC_HighBeam))
   (setq _RC_SelectionGear (round __RC_SelectionGear))
   (setq _RC_Ignition (round __RC_Ignition))
   self)
  (:AUTONOMOUS_EMERGENCY
   (&optional __AUTONOMOUS_EMERGENCY)
   (if __AUTONOMOUS_EMERGENCY (setq _AUTONOMOUS_EMERGENCY __AUTONOMOUS_EMERGENCY)) _AUTONOMOUS_EMERGENCY)
  (:RC_WindowResintance
   (&optional __RC_WindowResintance)
   (if __RC_WindowResintance (setq _RC_WindowResintance __RC_WindowResintance)) _RC_WindowResintance)
  (:RC_InteriorLight
   (&optional __RC_InteriorLight)
   (if __RC_InteriorLight (setq _RC_InteriorLight __RC_InteriorLight)) _RC_InteriorLight)
  (:RC_ReverseLight
   (&optional __RC_ReverseLight)
   (if __RC_ReverseLight (setq _RC_ReverseLight __RC_ReverseLight)) _RC_ReverseLight)
  (:RC_DRL
   (&optional __RC_DRL)
   (if __RC_DRL (setq _RC_DRL __RC_DRL)) _RC_DRL)
  (:RC_BrakeLight
   (&optional __RC_BrakeLight)
   (if __RC_BrakeLight (setq _RC_BrakeLight __RC_BrakeLight)) _RC_BrakeLight)
  (:AUTONOMOUS_DOOR_OPEN
   (&optional __AUTONOMOUS_DOOR_OPEN)
   (if __AUTONOMOUS_DOOR_OPEN (setq _AUTONOMOUS_DOOR_OPEN __AUTONOMOUS_DOOR_OPEN)) _AUTONOMOUS_DOOR_OPEN)
  (:AUTONOMOUS_DOOR_CLOSE
   (&optional __AUTONOMOUS_DOOR_CLOSE)
   (if __AUTONOMOUS_DOOR_CLOSE (setq _AUTONOMOUS_DOOR_CLOSE __AUTONOMOUS_DOOR_CLOSE)) _AUTONOMOUS_DOOR_CLOSE)
  (:RC_SignalStatus
   (&optional __RC_SignalStatus)
   (if __RC_SignalStatus (setq _RC_SignalStatus __RC_SignalStatus)) _RC_SignalStatus)
  (:RC_LowBeam
   (&optional __RC_LowBeam)
   (if __RC_LowBeam (setq _RC_LowBeam __RC_LowBeam)) _RC_LowBeam)
  (:RC_HighBeam
   (&optional __RC_HighBeam)
   (if __RC_HighBeam (setq _RC_HighBeam __RC_HighBeam)) _RC_HighBeam)
  (:RC_SelectionGear
   (&optional __RC_SelectionGear)
   (if __RC_SelectionGear (setq _RC_SelectionGear __RC_SelectionGear)) _RC_SelectionGear)
  (:RC_Ignition
   (&optional __RC_Ignition)
   (if __RC_Ignition (setq _RC_Ignition __RC_Ignition)) _RC_Ignition)
  (:serialization-length
   ()
   (+
    ;; int8 _AUTONOMOUS_EMERGENCY
    1
    ;; uint8 _RC_WindowResintance
    1
    ;; uint8 _RC_InteriorLight
    1
    ;; uint8 _RC_ReverseLight
    1
    ;; uint8 _RC_DRL
    1
    ;; uint8 _RC_BrakeLight
    1
    ;; int8 _AUTONOMOUS_DOOR_OPEN
    1
    ;; int8 _AUTONOMOUS_DOOR_CLOSE
    1
    ;; uint8 _RC_SignalStatus
    1
    ;; uint8 _RC_LowBeam
    1
    ;; uint8 _RC_HighBeam
    1
    ;; uint8 _RC_SelectionGear
    1
    ;; uint8 _RC_Ignition
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _AUTONOMOUS_EMERGENCY
       (write-byte _AUTONOMOUS_EMERGENCY s)
     ;; uint8 _RC_WindowResintance
       (write-byte _RC_WindowResintance s)
     ;; uint8 _RC_InteriorLight
       (write-byte _RC_InteriorLight s)
     ;; uint8 _RC_ReverseLight
       (write-byte _RC_ReverseLight s)
     ;; uint8 _RC_DRL
       (write-byte _RC_DRL s)
     ;; uint8 _RC_BrakeLight
       (write-byte _RC_BrakeLight s)
     ;; int8 _AUTONOMOUS_DOOR_OPEN
       (write-byte _AUTONOMOUS_DOOR_OPEN s)
     ;; int8 _AUTONOMOUS_DOOR_CLOSE
       (write-byte _AUTONOMOUS_DOOR_CLOSE s)
     ;; uint8 _RC_SignalStatus
       (write-byte _RC_SignalStatus s)
     ;; uint8 _RC_LowBeam
       (write-byte _RC_LowBeam s)
     ;; uint8 _RC_HighBeam
       (write-byte _RC_HighBeam s)
     ;; uint8 _RC_SelectionGear
       (write-byte _RC_SelectionGear s)
     ;; uint8 _RC_Ignition
       (write-byte _RC_Ignition s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _AUTONOMOUS_EMERGENCY
     (setq _AUTONOMOUS_EMERGENCY (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _AUTONOMOUS_EMERGENCY 127) (setq _AUTONOMOUS_EMERGENCY (- _AUTONOMOUS_EMERGENCY 256)))
   ;; uint8 _RC_WindowResintance
     (setq _RC_WindowResintance (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RC_InteriorLight
     (setq _RC_InteriorLight (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RC_ReverseLight
     (setq _RC_ReverseLight (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RC_DRL
     (setq _RC_DRL (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RC_BrakeLight
     (setq _RC_BrakeLight (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _AUTONOMOUS_DOOR_OPEN
     (setq _AUTONOMOUS_DOOR_OPEN (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _AUTONOMOUS_DOOR_OPEN 127) (setq _AUTONOMOUS_DOOR_OPEN (- _AUTONOMOUS_DOOR_OPEN 256)))
   ;; int8 _AUTONOMOUS_DOOR_CLOSE
     (setq _AUTONOMOUS_DOOR_CLOSE (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _AUTONOMOUS_DOOR_CLOSE 127) (setq _AUTONOMOUS_DOOR_CLOSE (- _AUTONOMOUS_DOOR_CLOSE 256)))
   ;; uint8 _RC_SignalStatus
     (setq _RC_SignalStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RC_LowBeam
     (setq _RC_LowBeam (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RC_HighBeam
     (setq _RC_HighBeam (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RC_SelectionGear
     (setq _RC_SelectionGear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _RC_Ignition
     (setq _RC_Ignition (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get smart_can_msgs::rc_unittoOmux :md5sum-) "5a9878d79a5dbdeedaf385d69bb9ad39")
(setf (get smart_can_msgs::rc_unittoOmux :datatype-) "smart_can_msgs/rc_unittoOmux")
(setf (get smart_can_msgs::rc_unittoOmux :definition-)
      "int8 AUTONOMOUS_EMERGENCY
uint8 RC_WindowResintance
uint8 RC_InteriorLight
uint8 RC_ReverseLight
uint8 RC_DRL
uint8 RC_BrakeLight
int8 AUTONOMOUS_DOOR_OPEN
int8 AUTONOMOUS_DOOR_CLOSE
uint8 RC_SignalStatus
uint8 RC_LowBeam
uint8 RC_HighBeam
uint8 RC_SelectionGear
uint8 RC_Ignition
")



(provide :smart_can_msgs/rc_unittoOmux "5a9878d79a5dbdeedaf385d69bb9ad39")


