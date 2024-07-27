; Auto-generated. Do not edit!


(cl:in-package smart_can_msgs-msg)


;//! \htmlinclude FB_MotorDriver.msg.html

(cl:defclass <FB_MotorDriver> (roslisp-msg-protocol:ros-message)
  ((GEAR_STATUS_FROM_MOTOR
    :reader GEAR_STATUS_FROM_MOTOR
    :initarg :GEAR_STATUS_FROM_MOTOR
    :type cl:fixnum
    :initform 0)
   (PlusTripDistance
    :reader PlusTripDistance
    :initarg :PlusTripDistance
    :type cl:fixnum
    :initform 0)
   (VehicleRPM
    :reader VehicleRPM
    :initarg :VehicleRPM
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FB_MotorDriver (<FB_MotorDriver>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FB_MotorDriver>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FB_MotorDriver)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_can_msgs-msg:<FB_MotorDriver> is deprecated: use smart_can_msgs-msg:FB_MotorDriver instead.")))

(cl:ensure-generic-function 'GEAR_STATUS_FROM_MOTOR-val :lambda-list '(m))
(cl:defmethod GEAR_STATUS_FROM_MOTOR-val ((m <FB_MotorDriver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:GEAR_STATUS_FROM_MOTOR-val is deprecated.  Use smart_can_msgs-msg:GEAR_STATUS_FROM_MOTOR instead.")
  (GEAR_STATUS_FROM_MOTOR m))

(cl:ensure-generic-function 'PlusTripDistance-val :lambda-list '(m))
(cl:defmethod PlusTripDistance-val ((m <FB_MotorDriver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:PlusTripDistance-val is deprecated.  Use smart_can_msgs-msg:PlusTripDistance instead.")
  (PlusTripDistance m))

(cl:ensure-generic-function 'VehicleRPM-val :lambda-list '(m))
(cl:defmethod VehicleRPM-val ((m <FB_MotorDriver>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:VehicleRPM-val is deprecated.  Use smart_can_msgs-msg:VehicleRPM instead.")
  (VehicleRPM m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FB_MotorDriver>) ostream)
  "Serializes a message object of type '<FB_MotorDriver>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GEAR_STATUS_FROM_MOTOR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PlusTripDistance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'PlusTripDistance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VehicleRPM)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'VehicleRPM)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FB_MotorDriver>) istream)
  "Deserializes a message object of type '<FB_MotorDriver>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GEAR_STATUS_FROM_MOTOR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PlusTripDistance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'PlusTripDistance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VehicleRPM)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'VehicleRPM)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FB_MotorDriver>)))
  "Returns string type for a message object of type '<FB_MotorDriver>"
  "smart_can_msgs/FB_MotorDriver")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FB_MotorDriver)))
  "Returns string type for a message object of type 'FB_MotorDriver"
  "smart_can_msgs/FB_MotorDriver")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FB_MotorDriver>)))
  "Returns md5sum for a message object of type '<FB_MotorDriver>"
  "ee0fe8cee4053ab7ab54decef9676a69")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FB_MotorDriver)))
  "Returns md5sum for a message object of type 'FB_MotorDriver"
  "ee0fe8cee4053ab7ab54decef9676a69")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FB_MotorDriver>)))
  "Returns full string definition for message of type '<FB_MotorDriver>"
  (cl:format cl:nil "uint8 GEAR_STATUS_FROM_MOTOR~%uint16 PlusTripDistance~%uint16 VehicleRPM~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FB_MotorDriver)))
  "Returns full string definition for message of type 'FB_MotorDriver"
  (cl:format cl:nil "uint8 GEAR_STATUS_FROM_MOTOR~%uint16 PlusTripDistance~%uint16 VehicleRPM~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FB_MotorDriver>))
  (cl:+ 0
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FB_MotorDriver>))
  "Converts a ROS message object to a list"
  (cl:list 'FB_MotorDriver
    (cl:cons ':GEAR_STATUS_FROM_MOTOR (GEAR_STATUS_FROM_MOTOR msg))
    (cl:cons ':PlusTripDistance (PlusTripDistance msg))
    (cl:cons ':VehicleRPM (VehicleRPM msg))
))
