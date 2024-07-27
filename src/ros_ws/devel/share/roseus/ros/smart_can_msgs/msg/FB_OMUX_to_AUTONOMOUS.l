;; Auto-generated. Do not edit!


(when (boundp 'smart_can_msgs::FB_OMUX_to_AUTONOMOUS)
  (if (not (find-package "SMART_CAN_MSGS"))
    (make-package "SMART_CAN_MSGS"))
  (shadow 'FB_OMUX_to_AUTONOMOUS (find-package "SMART_CAN_MSGS")))
(unless (find-package "SMART_CAN_MSGS::FB_OMUX_TO_AUTONOMOUS")
  (make-package "SMART_CAN_MSGS::FB_OMUX_TO_AUTONOMOUS"))

(in-package "ROS")
;;//! \htmlinclude FB_OMUX_to_AUTONOMOUS.msg.html


(defclass smart_can_msgs::FB_OMUX_to_AUTONOMOUS
  :super ros::object
  :slots (_FB_EMERGENCY _FB_ReverseLight _FB_RightSignal _FB_WindowResistance _FB_LeftSignal _FB_InteriorLight _FB_DRL _FB_DoorKeyStatus _FB_BrakeLight _FB_BatteryVoltage _FB_ChargeInput _FB_HighBeam _FB_LowBeam _FB_IGNITION _FB_HazardousLight _FB_VehicleStatus _FB_LeftDoorStatus _FB_RightDoorStatus _FB_BatterySOC _FB_ErrorPowerTrain _FB_ErrorBattery _FB_BrakePedal_Voltage_EN ))

(defmethod smart_can_msgs::FB_OMUX_to_AUTONOMOUS
  (:init
   (&key
    ((:FB_EMERGENCY __FB_EMERGENCY) 0)
    ((:FB_ReverseLight __FB_ReverseLight) 0)
    ((:FB_RightSignal __FB_RightSignal) 0)
    ((:FB_WindowResistance __FB_WindowResistance) 0)
    ((:FB_LeftSignal __FB_LeftSignal) 0)
    ((:FB_InteriorLight __FB_InteriorLight) 0)
    ((:FB_DRL __FB_DRL) 0)
    ((:FB_DoorKeyStatus __FB_DoorKeyStatus) 0)
    ((:FB_BrakeLight __FB_BrakeLight) 0)
    ((:FB_BatteryVoltage __FB_BatteryVoltage) 0)
    ((:FB_ChargeInput __FB_ChargeInput) 0)
    ((:FB_HighBeam __FB_HighBeam) 0)
    ((:FB_LowBeam __FB_LowBeam) 0)
    ((:FB_IGNITION __FB_IGNITION) 0)
    ((:FB_HazardousLight __FB_HazardousLight) 0)
    ((:FB_VehicleStatus __FB_VehicleStatus) 0)
    ((:FB_LeftDoorStatus __FB_LeftDoorStatus) 0)
    ((:FB_RightDoorStatus __FB_RightDoorStatus) 0)
    ((:FB_BatterySOC __FB_BatterySOC) 0)
    ((:FB_ErrorPowerTrain __FB_ErrorPowerTrain) 0)
    ((:FB_ErrorBattery __FB_ErrorBattery) 0)
    ((:FB_BrakePedal_Voltage_EN __FB_BrakePedal_Voltage_EN) 0)
    )
   (send-super :init)
   (setq _FB_EMERGENCY (round __FB_EMERGENCY))
   (setq _FB_ReverseLight (round __FB_ReverseLight))
   (setq _FB_RightSignal (round __FB_RightSignal))
   (setq _FB_WindowResistance (round __FB_WindowResistance))
   (setq _FB_LeftSignal (round __FB_LeftSignal))
   (setq _FB_InteriorLight (round __FB_InteriorLight))
   (setq _FB_DRL (round __FB_DRL))
   (setq _FB_DoorKeyStatus (round __FB_DoorKeyStatus))
   (setq _FB_BrakeLight (round __FB_BrakeLight))
   (setq _FB_BatteryVoltage (round __FB_BatteryVoltage))
   (setq _FB_ChargeInput (round __FB_ChargeInput))
   (setq _FB_HighBeam (round __FB_HighBeam))
   (setq _FB_LowBeam (round __FB_LowBeam))
   (setq _FB_IGNITION (round __FB_IGNITION))
   (setq _FB_HazardousLight (round __FB_HazardousLight))
   (setq _FB_VehicleStatus (round __FB_VehicleStatus))
   (setq _FB_LeftDoorStatus (round __FB_LeftDoorStatus))
   (setq _FB_RightDoorStatus (round __FB_RightDoorStatus))
   (setq _FB_BatterySOC (round __FB_BatterySOC))
   (setq _FB_ErrorPowerTrain (round __FB_ErrorPowerTrain))
   (setq _FB_ErrorBattery (round __FB_ErrorBattery))
   (setq _FB_BrakePedal_Voltage_EN (round __FB_BrakePedal_Voltage_EN))
   self)
  (:FB_EMERGENCY
   (&optional __FB_EMERGENCY)
   (if __FB_EMERGENCY (setq _FB_EMERGENCY __FB_EMERGENCY)) _FB_EMERGENCY)
  (:FB_ReverseLight
   (&optional __FB_ReverseLight)
   (if __FB_ReverseLight (setq _FB_ReverseLight __FB_ReverseLight)) _FB_ReverseLight)
  (:FB_RightSignal
   (&optional __FB_RightSignal)
   (if __FB_RightSignal (setq _FB_RightSignal __FB_RightSignal)) _FB_RightSignal)
  (:FB_WindowResistance
   (&optional __FB_WindowResistance)
   (if __FB_WindowResistance (setq _FB_WindowResistance __FB_WindowResistance)) _FB_WindowResistance)
  (:FB_LeftSignal
   (&optional __FB_LeftSignal)
   (if __FB_LeftSignal (setq _FB_LeftSignal __FB_LeftSignal)) _FB_LeftSignal)
  (:FB_InteriorLight
   (&optional __FB_InteriorLight)
   (if __FB_InteriorLight (setq _FB_InteriorLight __FB_InteriorLight)) _FB_InteriorLight)
  (:FB_DRL
   (&optional __FB_DRL)
   (if __FB_DRL (setq _FB_DRL __FB_DRL)) _FB_DRL)
  (:FB_DoorKeyStatus
   (&optional __FB_DoorKeyStatus)
   (if __FB_DoorKeyStatus (setq _FB_DoorKeyStatus __FB_DoorKeyStatus)) _FB_DoorKeyStatus)
  (:FB_BrakeLight
   (&optional __FB_BrakeLight)
   (if __FB_BrakeLight (setq _FB_BrakeLight __FB_BrakeLight)) _FB_BrakeLight)
  (:FB_BatteryVoltage
   (&optional __FB_BatteryVoltage)
   (if __FB_BatteryVoltage (setq _FB_BatteryVoltage __FB_BatteryVoltage)) _FB_BatteryVoltage)
  (:FB_ChargeInput
   (&optional __FB_ChargeInput)
   (if __FB_ChargeInput (setq _FB_ChargeInput __FB_ChargeInput)) _FB_ChargeInput)
  (:FB_HighBeam
   (&optional __FB_HighBeam)
   (if __FB_HighBeam (setq _FB_HighBeam __FB_HighBeam)) _FB_HighBeam)
  (:FB_LowBeam
   (&optional __FB_LowBeam)
   (if __FB_LowBeam (setq _FB_LowBeam __FB_LowBeam)) _FB_LowBeam)
  (:FB_IGNITION
   (&optional __FB_IGNITION)
   (if __FB_IGNITION (setq _FB_IGNITION __FB_IGNITION)) _FB_IGNITION)
  (:FB_HazardousLight
   (&optional __FB_HazardousLight)
   (if __FB_HazardousLight (setq _FB_HazardousLight __FB_HazardousLight)) _FB_HazardousLight)
  (:FB_VehicleStatus
   (&optional __FB_VehicleStatus)
   (if __FB_VehicleStatus (setq _FB_VehicleStatus __FB_VehicleStatus)) _FB_VehicleStatus)
  (:FB_LeftDoorStatus
   (&optional __FB_LeftDoorStatus)
   (if __FB_LeftDoorStatus (setq _FB_LeftDoorStatus __FB_LeftDoorStatus)) _FB_LeftDoorStatus)
  (:FB_RightDoorStatus
   (&optional __FB_RightDoorStatus)
   (if __FB_RightDoorStatus (setq _FB_RightDoorStatus __FB_RightDoorStatus)) _FB_RightDoorStatus)
  (:FB_BatterySOC
   (&optional __FB_BatterySOC)
   (if __FB_BatterySOC (setq _FB_BatterySOC __FB_BatterySOC)) _FB_BatterySOC)
  (:FB_ErrorPowerTrain
   (&optional __FB_ErrorPowerTrain)
   (if __FB_ErrorPowerTrain (setq _FB_ErrorPowerTrain __FB_ErrorPowerTrain)) _FB_ErrorPowerTrain)
  (:FB_ErrorBattery
   (&optional __FB_ErrorBattery)
   (if __FB_ErrorBattery (setq _FB_ErrorBattery __FB_ErrorBattery)) _FB_ErrorBattery)
  (:FB_BrakePedal_Voltage_EN
   (&optional __FB_BrakePedal_Voltage_EN)
   (if __FB_BrakePedal_Voltage_EN (setq _FB_BrakePedal_Voltage_EN __FB_BrakePedal_Voltage_EN)) _FB_BrakePedal_Voltage_EN)
  (:serialization-length
   ()
   (+
    ;; uint8 _FB_EMERGENCY
    1
    ;; uint8 _FB_ReverseLight
    1
    ;; uint8 _FB_RightSignal
    1
    ;; uint8 _FB_WindowResistance
    1
    ;; uint8 _FB_LeftSignal
    1
    ;; uint8 _FB_InteriorLight
    1
    ;; uint8 _FB_DRL
    1
    ;; uint8 _FB_DoorKeyStatus
    1
    ;; uint8 _FB_BrakeLight
    1
    ;; uint8 _FB_BatteryVoltage
    1
    ;; uint8 _FB_ChargeInput
    1
    ;; uint8 _FB_HighBeam
    1
    ;; uint8 _FB_LowBeam
    1
    ;; uint8 _FB_IGNITION
    1
    ;; uint8 _FB_HazardousLight
    1
    ;; uint8 _FB_VehicleStatus
    1
    ;; uint8 _FB_LeftDoorStatus
    1
    ;; uint8 _FB_RightDoorStatus
    1
    ;; uint8 _FB_BatterySOC
    1
    ;; uint8 _FB_ErrorPowerTrain
    1
    ;; uint8 _FB_ErrorBattery
    1
    ;; uint8 _FB_BrakePedal_Voltage_EN
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _FB_EMERGENCY
       (write-byte _FB_EMERGENCY s)
     ;; uint8 _FB_ReverseLight
       (write-byte _FB_ReverseLight s)
     ;; uint8 _FB_RightSignal
       (write-byte _FB_RightSignal s)
     ;; uint8 _FB_WindowResistance
       (write-byte _FB_WindowResistance s)
     ;; uint8 _FB_LeftSignal
       (write-byte _FB_LeftSignal s)
     ;; uint8 _FB_InteriorLight
       (write-byte _FB_InteriorLight s)
     ;; uint8 _FB_DRL
       (write-byte _FB_DRL s)
     ;; uint8 _FB_DoorKeyStatus
       (write-byte _FB_DoorKeyStatus s)
     ;; uint8 _FB_BrakeLight
       (write-byte _FB_BrakeLight s)
     ;; uint8 _FB_BatteryVoltage
       (write-byte _FB_BatteryVoltage s)
     ;; uint8 _FB_ChargeInput
       (write-byte _FB_ChargeInput s)
     ;; uint8 _FB_HighBeam
       (write-byte _FB_HighBeam s)
     ;; uint8 _FB_LowBeam
       (write-byte _FB_LowBeam s)
     ;; uint8 _FB_IGNITION
       (write-byte _FB_IGNITION s)
     ;; uint8 _FB_HazardousLight
       (write-byte _FB_HazardousLight s)
     ;; uint8 _FB_VehicleStatus
       (write-byte _FB_VehicleStatus s)
     ;; uint8 _FB_LeftDoorStatus
       (write-byte _FB_LeftDoorStatus s)
     ;; uint8 _FB_RightDoorStatus
       (write-byte _FB_RightDoorStatus s)
     ;; uint8 _FB_BatterySOC
       (write-byte _FB_BatterySOC s)
     ;; uint8 _FB_ErrorPowerTrain
       (write-byte _FB_ErrorPowerTrain s)
     ;; uint8 _FB_ErrorBattery
       (write-byte _FB_ErrorBattery s)
     ;; uint8 _FB_BrakePedal_Voltage_EN
       (write-byte _FB_BrakePedal_Voltage_EN s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _FB_EMERGENCY
     (setq _FB_EMERGENCY (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_ReverseLight
     (setq _FB_ReverseLight (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_RightSignal
     (setq _FB_RightSignal (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_WindowResistance
     (setq _FB_WindowResistance (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_LeftSignal
     (setq _FB_LeftSignal (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_InteriorLight
     (setq _FB_InteriorLight (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_DRL
     (setq _FB_DRL (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_DoorKeyStatus
     (setq _FB_DoorKeyStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_BrakeLight
     (setq _FB_BrakeLight (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_BatteryVoltage
     (setq _FB_BatteryVoltage (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_ChargeInput
     (setq _FB_ChargeInput (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_HighBeam
     (setq _FB_HighBeam (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_LowBeam
     (setq _FB_LowBeam (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_IGNITION
     (setq _FB_IGNITION (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_HazardousLight
     (setq _FB_HazardousLight (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_VehicleStatus
     (setq _FB_VehicleStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_LeftDoorStatus
     (setq _FB_LeftDoorStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_RightDoorStatus
     (setq _FB_RightDoorStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_BatterySOC
     (setq _FB_BatterySOC (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_ErrorPowerTrain
     (setq _FB_ErrorPowerTrain (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_ErrorBattery
     (setq _FB_ErrorBattery (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _FB_BrakePedal_Voltage_EN
     (setq _FB_BrakePedal_Voltage_EN (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get smart_can_msgs::FB_OMUX_to_AUTONOMOUS :md5sum-) "7068cf9bccd4d4797668be13f6b90cbb")
(setf (get smart_can_msgs::FB_OMUX_to_AUTONOMOUS :datatype-) "smart_can_msgs/FB_OMUX_to_AUTONOMOUS")
(setf (get smart_can_msgs::FB_OMUX_to_AUTONOMOUS :definition-)
      "uint8 FB_EMERGENCY
uint8 FB_ReverseLight
uint8 FB_RightSignal
uint8 FB_WindowResistance
uint8 FB_LeftSignal
uint8 FB_InteriorLight
uint8 FB_DRL
uint8 FB_DoorKeyStatus
uint8 FB_BrakeLight
uint8 FB_BatteryVoltage
uint8 FB_ChargeInput
uint8 FB_HighBeam
uint8 FB_LowBeam
uint8 FB_IGNITION
uint8 FB_HazardousLight
uint8 FB_VehicleStatus
uint8 FB_LeftDoorStatus
uint8 FB_RightDoorStatus
uint8 FB_BatterySOC
uint8 FB_ErrorPowerTrain
uint8 FB_ErrorBattery
uint8 FB_BrakePedal_Voltage_EN
")



(provide :smart_can_msgs/FB_OMUX_to_AUTONOMOUS "7068cf9bccd4d4797668be13f6b90cbb")


