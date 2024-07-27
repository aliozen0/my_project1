; Auto-generated. Do not edit!


(cl:in-package smart_can_msgs-msg)


;//! \htmlinclude AUTONOMOUS_BrakePedalControl.msg.html

(cl:defclass <AUTONOMOUS_BrakePedalControl> (roslisp-msg-protocol:ros-message)
  ((AUTONOMOUS_BrakeMotor_Voltage
    :reader AUTONOMOUS_BrakeMotor_Voltage
    :initarg :AUTONOMOUS_BrakeMotor_Voltage
    :type cl:fixnum
    :initform 0)
   (AUTONOMOUS_BrakePedalMotor_PER
    :reader AUTONOMOUS_BrakePedalMotor_PER
    :initarg :AUTONOMOUS_BrakePedalMotor_PER
    :type cl:fixnum
    :initform 0)
   (AUTONOMOUS_BrakePedalMotor_ACC
    :reader AUTONOMOUS_BrakePedalMotor_ACC
    :initarg :AUTONOMOUS_BrakePedalMotor_ACC
    :type cl:fixnum
    :initform 0)
   (AUTONOMOUS_BrakePedalMotor_EN
    :reader AUTONOMOUS_BrakePedalMotor_EN
    :initarg :AUTONOMOUS_BrakePedalMotor_EN
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AUTONOMOUS_BrakePedalControl (<AUTONOMOUS_BrakePedalControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AUTONOMOUS_BrakePedalControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AUTONOMOUS_BrakePedalControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_can_msgs-msg:<AUTONOMOUS_BrakePedalControl> is deprecated: use smart_can_msgs-msg:AUTONOMOUS_BrakePedalControl instead.")))

(cl:ensure-generic-function 'AUTONOMOUS_BrakeMotor_Voltage-val :lambda-list '(m))
(cl:defmethod AUTONOMOUS_BrakeMotor_Voltage-val ((m <AUTONOMOUS_BrakePedalControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:AUTONOMOUS_BrakeMotor_Voltage-val is deprecated.  Use smart_can_msgs-msg:AUTONOMOUS_BrakeMotor_Voltage instead.")
  (AUTONOMOUS_BrakeMotor_Voltage m))

(cl:ensure-generic-function 'AUTONOMOUS_BrakePedalMotor_PER-val :lambda-list '(m))
(cl:defmethod AUTONOMOUS_BrakePedalMotor_PER-val ((m <AUTONOMOUS_BrakePedalControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:AUTONOMOUS_BrakePedalMotor_PER-val is deprecated.  Use smart_can_msgs-msg:AUTONOMOUS_BrakePedalMotor_PER instead.")
  (AUTONOMOUS_BrakePedalMotor_PER m))

(cl:ensure-generic-function 'AUTONOMOUS_BrakePedalMotor_ACC-val :lambda-list '(m))
(cl:defmethod AUTONOMOUS_BrakePedalMotor_ACC-val ((m <AUTONOMOUS_BrakePedalControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:AUTONOMOUS_BrakePedalMotor_ACC-val is deprecated.  Use smart_can_msgs-msg:AUTONOMOUS_BrakePedalMotor_ACC instead.")
  (AUTONOMOUS_BrakePedalMotor_ACC m))

(cl:ensure-generic-function 'AUTONOMOUS_BrakePedalMotor_EN-val :lambda-list '(m))
(cl:defmethod AUTONOMOUS_BrakePedalMotor_EN-val ((m <AUTONOMOUS_BrakePedalControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:AUTONOMOUS_BrakePedalMotor_EN-val is deprecated.  Use smart_can_msgs-msg:AUTONOMOUS_BrakePedalMotor_EN instead.")
  (AUTONOMOUS_BrakePedalMotor_EN m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AUTONOMOUS_BrakePedalControl>) ostream)
  "Serializes a message object of type '<AUTONOMOUS_BrakePedalControl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AUTONOMOUS_BrakeMotor_Voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AUTONOMOUS_BrakePedalMotor_PER)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AUTONOMOUS_BrakePedalMotor_ACC)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'AUTONOMOUS_BrakePedalMotor_ACC)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AUTONOMOUS_BrakePedalMotor_EN)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AUTONOMOUS_BrakePedalControl>) istream)
  "Deserializes a message object of type '<AUTONOMOUS_BrakePedalControl>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AUTONOMOUS_BrakeMotor_Voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AUTONOMOUS_BrakePedalMotor_PER)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AUTONOMOUS_BrakePedalMotor_ACC)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'AUTONOMOUS_BrakePedalMotor_ACC)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AUTONOMOUS_BrakePedalMotor_EN)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AUTONOMOUS_BrakePedalControl>)))
  "Returns string type for a message object of type '<AUTONOMOUS_BrakePedalControl>"
  "smart_can_msgs/AUTONOMOUS_BrakePedalControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AUTONOMOUS_BrakePedalControl)))
  "Returns string type for a message object of type 'AUTONOMOUS_BrakePedalControl"
  "smart_can_msgs/AUTONOMOUS_BrakePedalControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AUTONOMOUS_BrakePedalControl>)))
  "Returns md5sum for a message object of type '<AUTONOMOUS_BrakePedalControl>"
  "abb8668963ba2b5c76295810f98dea37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AUTONOMOUS_BrakePedalControl)))
  "Returns md5sum for a message object of type 'AUTONOMOUS_BrakePedalControl"
  "abb8668963ba2b5c76295810f98dea37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AUTONOMOUS_BrakePedalControl>)))
  "Returns full string definition for message of type '<AUTONOMOUS_BrakePedalControl>"
  (cl:format cl:nil "uint8 AUTONOMOUS_BrakeMotor_Voltage~%uint8 AUTONOMOUS_BrakePedalMotor_PER~%uint16 AUTONOMOUS_BrakePedalMotor_ACC~%uint8 AUTONOMOUS_BrakePedalMotor_EN~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AUTONOMOUS_BrakePedalControl)))
  "Returns full string definition for message of type 'AUTONOMOUS_BrakePedalControl"
  (cl:format cl:nil "uint8 AUTONOMOUS_BrakeMotor_Voltage~%uint8 AUTONOMOUS_BrakePedalMotor_PER~%uint16 AUTONOMOUS_BrakePedalMotor_ACC~%uint8 AUTONOMOUS_BrakePedalMotor_EN~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AUTONOMOUS_BrakePedalControl>))
  (cl:+ 0
     1
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AUTONOMOUS_BrakePedalControl>))
  "Converts a ROS message object to a list"
  (cl:list 'AUTONOMOUS_BrakePedalControl
    (cl:cons ':AUTONOMOUS_BrakeMotor_Voltage (AUTONOMOUS_BrakeMotor_Voltage msg))
    (cl:cons ':AUTONOMOUS_BrakePedalMotor_PER (AUTONOMOUS_BrakePedalMotor_PER msg))
    (cl:cons ':AUTONOMOUS_BrakePedalMotor_ACC (AUTONOMOUS_BrakePedalMotor_ACC msg))
    (cl:cons ':AUTONOMOUS_BrakePedalMotor_EN (AUTONOMOUS_BrakePedalMotor_EN msg))
))
