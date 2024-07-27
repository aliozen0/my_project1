; Auto-generated. Do not edit!


(cl:in-package smart_can_msgs-msg)


;//! \htmlinclude AutonomousHeardBit.msg.html

(cl:defclass <AutonomousHeardBit> (roslisp-msg-protocol:ros-message)
  ((AutonomousManuelSelect
    :reader AutonomousManuelSelect
    :initarg :AutonomousManuelSelect
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AutonomousHeardBit (<AutonomousHeardBit>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AutonomousHeardBit>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AutonomousHeardBit)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_can_msgs-msg:<AutonomousHeardBit> is deprecated: use smart_can_msgs-msg:AutonomousHeardBit instead.")))

(cl:ensure-generic-function 'AutonomousManuelSelect-val :lambda-list '(m))
(cl:defmethod AutonomousManuelSelect-val ((m <AutonomousHeardBit>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:AutonomousManuelSelect-val is deprecated.  Use smart_can_msgs-msg:AutonomousManuelSelect instead.")
  (AutonomousManuelSelect m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AutonomousHeardBit>) ostream)
  "Serializes a message object of type '<AutonomousHeardBit>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AutonomousManuelSelect)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AutonomousHeardBit>) istream)
  "Deserializes a message object of type '<AutonomousHeardBit>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AutonomousManuelSelect)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AutonomousHeardBit>)))
  "Returns string type for a message object of type '<AutonomousHeardBit>"
  "smart_can_msgs/AutonomousHeardBit")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AutonomousHeardBit)))
  "Returns string type for a message object of type 'AutonomousHeardBit"
  "smart_can_msgs/AutonomousHeardBit")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AutonomousHeardBit>)))
  "Returns md5sum for a message object of type '<AutonomousHeardBit>"
  "c39b595a65591df04cdfa147e70909cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AutonomousHeardBit)))
  "Returns md5sum for a message object of type 'AutonomousHeardBit"
  "c39b595a65591df04cdfa147e70909cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AutonomousHeardBit>)))
  "Returns full string definition for message of type '<AutonomousHeardBit>"
  (cl:format cl:nil "uint8 AutonomousManuelSelect~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AutonomousHeardBit)))
  "Returns full string definition for message of type 'AutonomousHeardBit"
  (cl:format cl:nil "uint8 AutonomousManuelSelect~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AutonomousHeardBit>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AutonomousHeardBit>))
  "Converts a ROS message object to a list"
  (cl:list 'AutonomousHeardBit
    (cl:cons ':AutonomousManuelSelect (AutonomousManuelSelect msg))
))
