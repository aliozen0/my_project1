; Auto-generated. Do not edit!


(cl:in-package smart_can_msgs-msg)


;//! \htmlinclude dis_messages.msg.html

(cl:defclass <dis_messages> (roslisp-msg-protocol:ros-message)
  ((angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass dis_messages (<dis_messages>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <dis_messages>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'dis_messages)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_can_msgs-msg:<dis_messages> is deprecated: use smart_can_msgs-msg:dis_messages instead.")))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <dis_messages>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:angle-val is deprecated.  Use smart_can_msgs-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <dis_messages>) ostream)
  "Serializes a message object of type '<dis_messages>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <dis_messages>) istream)
  "Deserializes a message object of type '<dis_messages>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<dis_messages>)))
  "Returns string type for a message object of type '<dis_messages>"
  "smart_can_msgs/dis_messages")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'dis_messages)))
  "Returns string type for a message object of type 'dis_messages"
  "smart_can_msgs/dis_messages")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<dis_messages>)))
  "Returns md5sum for a message object of type '<dis_messages>"
  "2d11dcdbe5a6f73dd324353dc52315ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'dis_messages)))
  "Returns md5sum for a message object of type 'dis_messages"
  "2d11dcdbe5a6f73dd324353dc52315ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<dis_messages>)))
  "Returns full string definition for message of type '<dis_messages>"
  (cl:format cl:nil "float32 angle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'dis_messages)))
  "Returns full string definition for message of type 'dis_messages"
  (cl:format cl:nil "float32 angle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <dis_messages>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <dis_messages>))
  "Converts a ROS message object to a list"
  (cl:list 'dis_messages
    (cl:cons ':angle (angle msg))
))
