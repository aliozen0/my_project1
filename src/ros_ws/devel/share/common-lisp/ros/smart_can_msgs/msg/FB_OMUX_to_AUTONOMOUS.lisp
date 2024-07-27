; Auto-generated. Do not edit!


(cl:in-package smart_can_msgs-msg)


;//! \htmlinclude FB_OMUX_to_AUTONOMOUS.msg.html

(cl:defclass <FB_OMUX_to_AUTONOMOUS> (roslisp-msg-protocol:ros-message)
  ((FB_EMERGENCY
    :reader FB_EMERGENCY
    :initarg :FB_EMERGENCY
    :type cl:fixnum
    :initform 0)
   (FB_ReverseLight
    :reader FB_ReverseLight
    :initarg :FB_ReverseLight
    :type cl:fixnum
    :initform 0)
   (FB_RightSignal
    :reader FB_RightSignal
    :initarg :FB_RightSignal
    :type cl:fixnum
    :initform 0)
   (FB_WindowResistance
    :reader FB_WindowResistance
    :initarg :FB_WindowResistance
    :type cl:fixnum
    :initform 0)
   (FB_LeftSignal
    :reader FB_LeftSignal
    :initarg :FB_LeftSignal
    :type cl:fixnum
    :initform 0)
   (FB_InteriorLight
    :reader FB_InteriorLight
    :initarg :FB_InteriorLight
    :type cl:fixnum
    :initform 0)
   (FB_DRL
    :reader FB_DRL
    :initarg :FB_DRL
    :type cl:fixnum
    :initform 0)
   (FB_DoorKeyStatus
    :reader FB_DoorKeyStatus
    :initarg :FB_DoorKeyStatus
    :type cl:fixnum
    :initform 0)
   (FB_BrakeLight
    :reader FB_BrakeLight
    :initarg :FB_BrakeLight
    :type cl:fixnum
    :initform 0)
   (FB_BatteryVoltage
    :reader FB_BatteryVoltage
    :initarg :FB_BatteryVoltage
    :type cl:fixnum
    :initform 0)
   (FB_ChargeInput
    :reader FB_ChargeInput
    :initarg :FB_ChargeInput
    :type cl:fixnum
    :initform 0)
   (FB_HighBeam
    :reader FB_HighBeam
    :initarg :FB_HighBeam
    :type cl:fixnum
    :initform 0)
   (FB_LowBeam
    :reader FB_LowBeam
    :initarg :FB_LowBeam
    :type cl:fixnum
    :initform 0)
   (FB_IGNITION
    :reader FB_IGNITION
    :initarg :FB_IGNITION
    :type cl:fixnum
    :initform 0)
   (FB_HazardousLight
    :reader FB_HazardousLight
    :initarg :FB_HazardousLight
    :type cl:fixnum
    :initform 0)
   (FB_VehicleStatus
    :reader FB_VehicleStatus
    :initarg :FB_VehicleStatus
    :type cl:fixnum
    :initform 0)
   (FB_LeftDoorStatus
    :reader FB_LeftDoorStatus
    :initarg :FB_LeftDoorStatus
    :type cl:fixnum
    :initform 0)
   (FB_RightDoorStatus
    :reader FB_RightDoorStatus
    :initarg :FB_RightDoorStatus
    :type cl:fixnum
    :initform 0)
   (FB_BatterySOC
    :reader FB_BatterySOC
    :initarg :FB_BatterySOC
    :type cl:fixnum
    :initform 0)
   (FB_ErrorPowerTrain
    :reader FB_ErrorPowerTrain
    :initarg :FB_ErrorPowerTrain
    :type cl:fixnum
    :initform 0)
   (FB_ErrorBattery
    :reader FB_ErrorBattery
    :initarg :FB_ErrorBattery
    :type cl:fixnum
    :initform 0)
   (FB_BrakePedal_Voltage_EN
    :reader FB_BrakePedal_Voltage_EN
    :initarg :FB_BrakePedal_Voltage_EN
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FB_OMUX_to_AUTONOMOUS (<FB_OMUX_to_AUTONOMOUS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FB_OMUX_to_AUTONOMOUS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FB_OMUX_to_AUTONOMOUS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_can_msgs-msg:<FB_OMUX_to_AUTONOMOUS> is deprecated: use smart_can_msgs-msg:FB_OMUX_to_AUTONOMOUS instead.")))

(cl:ensure-generic-function 'FB_EMERGENCY-val :lambda-list '(m))
(cl:defmethod FB_EMERGENCY-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_EMERGENCY-val is deprecated.  Use smart_can_msgs-msg:FB_EMERGENCY instead.")
  (FB_EMERGENCY m))

(cl:ensure-generic-function 'FB_ReverseLight-val :lambda-list '(m))
(cl:defmethod FB_ReverseLight-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_ReverseLight-val is deprecated.  Use smart_can_msgs-msg:FB_ReverseLight instead.")
  (FB_ReverseLight m))

(cl:ensure-generic-function 'FB_RightSignal-val :lambda-list '(m))
(cl:defmethod FB_RightSignal-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_RightSignal-val is deprecated.  Use smart_can_msgs-msg:FB_RightSignal instead.")
  (FB_RightSignal m))

(cl:ensure-generic-function 'FB_WindowResistance-val :lambda-list '(m))
(cl:defmethod FB_WindowResistance-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_WindowResistance-val is deprecated.  Use smart_can_msgs-msg:FB_WindowResistance instead.")
  (FB_WindowResistance m))

(cl:ensure-generic-function 'FB_LeftSignal-val :lambda-list '(m))
(cl:defmethod FB_LeftSignal-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_LeftSignal-val is deprecated.  Use smart_can_msgs-msg:FB_LeftSignal instead.")
  (FB_LeftSignal m))

(cl:ensure-generic-function 'FB_InteriorLight-val :lambda-list '(m))
(cl:defmethod FB_InteriorLight-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_InteriorLight-val is deprecated.  Use smart_can_msgs-msg:FB_InteriorLight instead.")
  (FB_InteriorLight m))

(cl:ensure-generic-function 'FB_DRL-val :lambda-list '(m))
(cl:defmethod FB_DRL-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_DRL-val is deprecated.  Use smart_can_msgs-msg:FB_DRL instead.")
  (FB_DRL m))

(cl:ensure-generic-function 'FB_DoorKeyStatus-val :lambda-list '(m))
(cl:defmethod FB_DoorKeyStatus-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_DoorKeyStatus-val is deprecated.  Use smart_can_msgs-msg:FB_DoorKeyStatus instead.")
  (FB_DoorKeyStatus m))

(cl:ensure-generic-function 'FB_BrakeLight-val :lambda-list '(m))
(cl:defmethod FB_BrakeLight-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_BrakeLight-val is deprecated.  Use smart_can_msgs-msg:FB_BrakeLight instead.")
  (FB_BrakeLight m))

(cl:ensure-generic-function 'FB_BatteryVoltage-val :lambda-list '(m))
(cl:defmethod FB_BatteryVoltage-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_BatteryVoltage-val is deprecated.  Use smart_can_msgs-msg:FB_BatteryVoltage instead.")
  (FB_BatteryVoltage m))

(cl:ensure-generic-function 'FB_ChargeInput-val :lambda-list '(m))
(cl:defmethod FB_ChargeInput-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_ChargeInput-val is deprecated.  Use smart_can_msgs-msg:FB_ChargeInput instead.")
  (FB_ChargeInput m))

(cl:ensure-generic-function 'FB_HighBeam-val :lambda-list '(m))
(cl:defmethod FB_HighBeam-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_HighBeam-val is deprecated.  Use smart_can_msgs-msg:FB_HighBeam instead.")
  (FB_HighBeam m))

(cl:ensure-generic-function 'FB_LowBeam-val :lambda-list '(m))
(cl:defmethod FB_LowBeam-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_LowBeam-val is deprecated.  Use smart_can_msgs-msg:FB_LowBeam instead.")
  (FB_LowBeam m))

(cl:ensure-generic-function 'FB_IGNITION-val :lambda-list '(m))
(cl:defmethod FB_IGNITION-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_IGNITION-val is deprecated.  Use smart_can_msgs-msg:FB_IGNITION instead.")
  (FB_IGNITION m))

(cl:ensure-generic-function 'FB_HazardousLight-val :lambda-list '(m))
(cl:defmethod FB_HazardousLight-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_HazardousLight-val is deprecated.  Use smart_can_msgs-msg:FB_HazardousLight instead.")
  (FB_HazardousLight m))

(cl:ensure-generic-function 'FB_VehicleStatus-val :lambda-list '(m))
(cl:defmethod FB_VehicleStatus-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_VehicleStatus-val is deprecated.  Use smart_can_msgs-msg:FB_VehicleStatus instead.")
  (FB_VehicleStatus m))

(cl:ensure-generic-function 'FB_LeftDoorStatus-val :lambda-list '(m))
(cl:defmethod FB_LeftDoorStatus-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_LeftDoorStatus-val is deprecated.  Use smart_can_msgs-msg:FB_LeftDoorStatus instead.")
  (FB_LeftDoorStatus m))

(cl:ensure-generic-function 'FB_RightDoorStatus-val :lambda-list '(m))
(cl:defmethod FB_RightDoorStatus-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_RightDoorStatus-val is deprecated.  Use smart_can_msgs-msg:FB_RightDoorStatus instead.")
  (FB_RightDoorStatus m))

(cl:ensure-generic-function 'FB_BatterySOC-val :lambda-list '(m))
(cl:defmethod FB_BatterySOC-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_BatterySOC-val is deprecated.  Use smart_can_msgs-msg:FB_BatterySOC instead.")
  (FB_BatterySOC m))

(cl:ensure-generic-function 'FB_ErrorPowerTrain-val :lambda-list '(m))
(cl:defmethod FB_ErrorPowerTrain-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_ErrorPowerTrain-val is deprecated.  Use smart_can_msgs-msg:FB_ErrorPowerTrain instead.")
  (FB_ErrorPowerTrain m))

(cl:ensure-generic-function 'FB_ErrorBattery-val :lambda-list '(m))
(cl:defmethod FB_ErrorBattery-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_ErrorBattery-val is deprecated.  Use smart_can_msgs-msg:FB_ErrorBattery instead.")
  (FB_ErrorBattery m))

(cl:ensure-generic-function 'FB_BrakePedal_Voltage_EN-val :lambda-list '(m))
(cl:defmethod FB_BrakePedal_Voltage_EN-val ((m <FB_OMUX_to_AUTONOMOUS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_BrakePedal_Voltage_EN-val is deprecated.  Use smart_can_msgs-msg:FB_BrakePedal_Voltage_EN instead.")
  (FB_BrakePedal_Voltage_EN m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FB_OMUX_to_AUTONOMOUS>) ostream)
  "Serializes a message object of type '<FB_OMUX_to_AUTONOMOUS>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_EMERGENCY)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_ReverseLight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_RightSignal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_WindowResistance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_LeftSignal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_InteriorLight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_DRL)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_DoorKeyStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_BrakeLight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_BatteryVoltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_ChargeInput)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_HighBeam)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_LowBeam)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_IGNITION)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_HazardousLight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_VehicleStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_LeftDoorStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_RightDoorStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_BatterySOC)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_ErrorPowerTrain)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_ErrorBattery)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_BrakePedal_Voltage_EN)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FB_OMUX_to_AUTONOMOUS>) istream)
  "Deserializes a message object of type '<FB_OMUX_to_AUTONOMOUS>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_EMERGENCY)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_ReverseLight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_RightSignal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_WindowResistance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_LeftSignal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_InteriorLight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_DRL)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_DoorKeyStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_BrakeLight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_BatteryVoltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_ChargeInput)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_HighBeam)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_LowBeam)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_IGNITION)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_HazardousLight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_VehicleStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_LeftDoorStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_RightDoorStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_BatterySOC)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_ErrorPowerTrain)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_ErrorBattery)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_BrakePedal_Voltage_EN)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FB_OMUX_to_AUTONOMOUS>)))
  "Returns string type for a message object of type '<FB_OMUX_to_AUTONOMOUS>"
  "smart_can_msgs/FB_OMUX_to_AUTONOMOUS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FB_OMUX_to_AUTONOMOUS)))
  "Returns string type for a message object of type 'FB_OMUX_to_AUTONOMOUS"
  "smart_can_msgs/FB_OMUX_to_AUTONOMOUS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FB_OMUX_to_AUTONOMOUS>)))
  "Returns md5sum for a message object of type '<FB_OMUX_to_AUTONOMOUS>"
  "7068cf9bccd4d4797668be13f6b90cbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FB_OMUX_to_AUTONOMOUS)))
  "Returns md5sum for a message object of type 'FB_OMUX_to_AUTONOMOUS"
  "7068cf9bccd4d4797668be13f6b90cbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FB_OMUX_to_AUTONOMOUS>)))
  "Returns full string definition for message of type '<FB_OMUX_to_AUTONOMOUS>"
  (cl:format cl:nil "uint8 FB_EMERGENCY~%uint8 FB_ReverseLight~%uint8 FB_RightSignal~%uint8 FB_WindowResistance~%uint8 FB_LeftSignal~%uint8 FB_InteriorLight~%uint8 FB_DRL~%uint8 FB_DoorKeyStatus~%uint8 FB_BrakeLight~%uint8 FB_BatteryVoltage~%uint8 FB_ChargeInput~%uint8 FB_HighBeam~%uint8 FB_LowBeam~%uint8 FB_IGNITION~%uint8 FB_HazardousLight~%uint8 FB_VehicleStatus~%uint8 FB_LeftDoorStatus~%uint8 FB_RightDoorStatus~%uint8 FB_BatterySOC~%uint8 FB_ErrorPowerTrain~%uint8 FB_ErrorBattery~%uint8 FB_BrakePedal_Voltage_EN~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FB_OMUX_to_AUTONOMOUS)))
  "Returns full string definition for message of type 'FB_OMUX_to_AUTONOMOUS"
  (cl:format cl:nil "uint8 FB_EMERGENCY~%uint8 FB_ReverseLight~%uint8 FB_RightSignal~%uint8 FB_WindowResistance~%uint8 FB_LeftSignal~%uint8 FB_InteriorLight~%uint8 FB_DRL~%uint8 FB_DoorKeyStatus~%uint8 FB_BrakeLight~%uint8 FB_BatteryVoltage~%uint8 FB_ChargeInput~%uint8 FB_HighBeam~%uint8 FB_LowBeam~%uint8 FB_IGNITION~%uint8 FB_HazardousLight~%uint8 FB_VehicleStatus~%uint8 FB_LeftDoorStatus~%uint8 FB_RightDoorStatus~%uint8 FB_BatterySOC~%uint8 FB_ErrorPowerTrain~%uint8 FB_ErrorBattery~%uint8 FB_BrakePedal_Voltage_EN~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FB_OMUX_to_AUTONOMOUS>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FB_OMUX_to_AUTONOMOUS>))
  "Converts a ROS message object to a list"
  (cl:list 'FB_OMUX_to_AUTONOMOUS
    (cl:cons ':FB_EMERGENCY (FB_EMERGENCY msg))
    (cl:cons ':FB_ReverseLight (FB_ReverseLight msg))
    (cl:cons ':FB_RightSignal (FB_RightSignal msg))
    (cl:cons ':FB_WindowResistance (FB_WindowResistance msg))
    (cl:cons ':FB_LeftSignal (FB_LeftSignal msg))
    (cl:cons ':FB_InteriorLight (FB_InteriorLight msg))
    (cl:cons ':FB_DRL (FB_DRL msg))
    (cl:cons ':FB_DoorKeyStatus (FB_DoorKeyStatus msg))
    (cl:cons ':FB_BrakeLight (FB_BrakeLight msg))
    (cl:cons ':FB_BatteryVoltage (FB_BatteryVoltage msg))
    (cl:cons ':FB_ChargeInput (FB_ChargeInput msg))
    (cl:cons ':FB_HighBeam (FB_HighBeam msg))
    (cl:cons ':FB_LowBeam (FB_LowBeam msg))
    (cl:cons ':FB_IGNITION (FB_IGNITION msg))
    (cl:cons ':FB_HazardousLight (FB_HazardousLight msg))
    (cl:cons ':FB_VehicleStatus (FB_VehicleStatus msg))
    (cl:cons ':FB_LeftDoorStatus (FB_LeftDoorStatus msg))
    (cl:cons ':FB_RightDoorStatus (FB_RightDoorStatus msg))
    (cl:cons ':FB_BatterySOC (FB_BatterySOC msg))
    (cl:cons ':FB_ErrorPowerTrain (FB_ErrorPowerTrain msg))
    (cl:cons ':FB_ErrorBattery (FB_ErrorBattery msg))
    (cl:cons ':FB_BrakePedal_Voltage_EN (FB_BrakePedal_Voltage_EN msg))
))
