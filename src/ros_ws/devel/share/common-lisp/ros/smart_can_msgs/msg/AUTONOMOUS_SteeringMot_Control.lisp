; Auto-generated. Do not edit!


(cl:in-package smart_can_msgs-msg)


;//! \htmlinclude AUTONOMOUS_SteeringMot_Control.msg.html

(cl:defclass <AUTONOMOUS_SteeringMot_Control> (roslisp-msg-protocol:ros-message)
  ((AUTONOMOUS_SteeringMot_EN
    :reader AUTONOMOUS_SteeringMot_EN
    :initarg :AUTONOMOUS_SteeringMot_EN
    :type cl:fixnum
    :initform 0)
   (AUTONOMOUS_SteeringMot_PWM
    :reader AUTONOMOUS_SteeringMot_PWM
    :initarg :AUTONOMOUS_SteeringMot_PWM
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AUTONOMOUS_SteeringMot_Control (<AUTONOMOUS_SteeringMot_Control>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AUTONOMOUS_SteeringMot_Control>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AUTONOMOUS_SteeringMot_Control)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_can_msgs-msg:<AUTONOMOUS_SteeringMot_Control> is deprecated: use smart_can_msgs-msg:AUTONOMOUS_SteeringMot_Control instead.")))

(cl:ensure-generic-function 'AUTONOMOUS_SteeringMot_EN-val :lambda-list '(m))
(cl:defmethod AUTONOMOUS_SteeringMot_EN-val ((m <AUTONOMOUS_SteeringMot_Control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:AUTONOMOUS_SteeringMot_EN-val is deprecated.  Use smart_can_msgs-msg:AUTONOMOUS_SteeringMot_EN instead.")
  (AUTONOMOUS_SteeringMot_EN m))

(cl:ensure-generic-function 'AUTONOMOUS_SteeringMot_PWM-val :lambda-list '(m))
(cl:defmethod AUTONOMOUS_SteeringMot_PWM-val ((m <AUTONOMOUS_SteeringMot_Control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:AUTONOMOUS_SteeringMot_PWM-val is deprecated.  Use smart_can_msgs-msg:AUTONOMOUS_SteeringMot_PWM instead.")
  (AUTONOMOUS_SteeringMot_PWM m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AUTONOMOUS_SteeringMot_Control>) ostream)
  "Serializes a message object of type '<AUTONOMOUS_SteeringMot_Control>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AUTONOMOUS_SteeringMot_EN)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AUTONOMOUS_SteeringMot_PWM)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AUTONOMOUS_SteeringMot_Control>) istream)
  "Deserializes a message object of type '<AUTONOMOUS_SteeringMot_Control>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AUTONOMOUS_SteeringMot_EN)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AUTONOMOUS_SteeringMot_PWM)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AUTONOMOUS_SteeringMot_Control>)))
  "Returns string type for a message object of type '<AUTONOMOUS_SteeringMot_Control>"
  "smart_can_msgs/AUTONOMOUS_SteeringMot_Control")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AUTONOMOUS_SteeringMot_Control)))
  "Returns string type for a message object of type 'AUTONOMOUS_SteeringMot_Control"
  "smart_can_msgs/AUTONOMOUS_SteeringMot_Control")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AUTONOMOUS_SteeringMot_Control>)))
  "Returns md5sum for a message object of type '<AUTONOMOUS_SteeringMot_Control>"
  "ff6e7bebf0a430b5352684aa87189522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AUTONOMOUS_SteeringMot_Control)))
  "Returns md5sum for a message object of type 'AUTONOMOUS_SteeringMot_Control"
  "ff6e7bebf0a430b5352684aa87189522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AUTONOMOUS_SteeringMot_Control>)))
  "Returns full string definition for message of type '<AUTONOMOUS_SteeringMot_Control>"
  (cl:format cl:nil "uint8 AUTONOMOUS_SteeringMot_EN~%uint8 AUTONOMOUS_SteeringMot_PWM~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AUTONOMOUS_SteeringMot_Control)))
  "Returns full string definition for message of type 'AUTONOMOUS_SteeringMot_Control"
  (cl:format cl:nil "uint8 AUTONOMOUS_SteeringMot_EN~%uint8 AUTONOMOUS_SteeringMot_PWM~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AUTONOMOUS_SteeringMot_Control>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AUTONOMOUS_SteeringMot_Control>))
  "Converts a ROS message object to a list"
  (cl:list 'AUTONOMOUS_SteeringMot_Control
    (cl:cons ':AUTONOMOUS_SteeringMot_EN (AUTONOMOUS_SteeringMot_EN msg))
    (cl:cons ':AUTONOMOUS_SteeringMot_PWM (AUTONOMOUS_SteeringMot_PWM msg))
))
