; Auto-generated. Do not edit!


(cl:in-package smart_can_msgs-msg)


;//! \htmlinclude FeedbackSteeringAngle.msg.html

(cl:defclass <FeedbackSteeringAngle> (roslisp-msg-protocol:ros-message)
  ((FeedBackSteeringAngle
    :reader FeedBackSteeringAngle
    :initarg :FeedBackSteeringAngle
    :type cl:fixnum
    :initform 0)
   (FeedBackBrakepedalAngle
    :reader FeedBackBrakepedalAngle
    :initarg :FeedBackBrakepedalAngle
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FeedbackSteeringAngle (<FeedbackSteeringAngle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FeedbackSteeringAngle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FeedbackSteeringAngle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_can_msgs-msg:<FeedbackSteeringAngle> is deprecated: use smart_can_msgs-msg:FeedbackSteeringAngle instead.")))

(cl:ensure-generic-function 'FeedBackSteeringAngle-val :lambda-list '(m))
(cl:defmethod FeedBackSteeringAngle-val ((m <FeedbackSteeringAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FeedBackSteeringAngle-val is deprecated.  Use smart_can_msgs-msg:FeedBackSteeringAngle instead.")
  (FeedBackSteeringAngle m))

(cl:ensure-generic-function 'FeedBackBrakepedalAngle-val :lambda-list '(m))
(cl:defmethod FeedBackBrakepedalAngle-val ((m <FeedbackSteeringAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FeedBackBrakepedalAngle-val is deprecated.  Use smart_can_msgs-msg:FeedBackBrakepedalAngle instead.")
  (FeedBackBrakepedalAngle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FeedbackSteeringAngle>) ostream)
  "Serializes a message object of type '<FeedbackSteeringAngle>"
  (cl:let* ((signed (cl:slot-value msg 'FeedBackSteeringAngle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FeedBackBrakepedalAngle)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FeedbackSteeringAngle>) istream)
  "Deserializes a message object of type '<FeedbackSteeringAngle>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'FeedBackSteeringAngle) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FeedBackBrakepedalAngle)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FeedbackSteeringAngle>)))
  "Returns string type for a message object of type '<FeedbackSteeringAngle>"
  "smart_can_msgs/FeedbackSteeringAngle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FeedbackSteeringAngle)))
  "Returns string type for a message object of type 'FeedbackSteeringAngle"
  "smart_can_msgs/FeedbackSteeringAngle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FeedbackSteeringAngle>)))
  "Returns md5sum for a message object of type '<FeedbackSteeringAngle>"
  "a68f18dfe701cae0f3f21fa7c5ac93df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FeedbackSteeringAngle)))
  "Returns md5sum for a message object of type 'FeedbackSteeringAngle"
  "a68f18dfe701cae0f3f21fa7c5ac93df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FeedbackSteeringAngle>)))
  "Returns full string definition for message of type '<FeedbackSteeringAngle>"
  (cl:format cl:nil "int8 FeedBackSteeringAngle~%uint8 FeedBackBrakepedalAngle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FeedbackSteeringAngle)))
  "Returns full string definition for message of type 'FeedbackSteeringAngle"
  (cl:format cl:nil "int8 FeedBackSteeringAngle~%uint8 FeedBackBrakepedalAngle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FeedbackSteeringAngle>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FeedbackSteeringAngle>))
  "Converts a ROS message object to a list"
  (cl:list 'FeedbackSteeringAngle
    (cl:cons ':FeedBackSteeringAngle (FeedBackSteeringAngle msg))
    (cl:cons ':FeedBackBrakepedalAngle (FeedBackBrakepedalAngle msg))
))
