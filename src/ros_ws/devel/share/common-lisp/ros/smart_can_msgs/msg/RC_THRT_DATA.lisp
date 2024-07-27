; Auto-generated. Do not edit!


(cl:in-package smart_can_msgs-msg)


;//! \htmlinclude RC_THRT_DATA.msg.html

(cl:defclass <RC_THRT_DATA> (roslisp-msg-protocol:ros-message)
  ((RC_THRT_PEDAL_POSITION
    :reader RC_THRT_PEDAL_POSITION
    :initarg :RC_THRT_PEDAL_POSITION
    :type cl:fixnum
    :initform 0)
   (RC_THRT_PEDAL_PRESS
    :reader RC_THRT_PEDAL_PRESS
    :initarg :RC_THRT_PEDAL_PRESS
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RC_THRT_DATA (<RC_THRT_DATA>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RC_THRT_DATA>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RC_THRT_DATA)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_can_msgs-msg:<RC_THRT_DATA> is deprecated: use smart_can_msgs-msg:RC_THRT_DATA instead.")))

(cl:ensure-generic-function 'RC_THRT_PEDAL_POSITION-val :lambda-list '(m))
(cl:defmethod RC_THRT_PEDAL_POSITION-val ((m <RC_THRT_DATA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_THRT_PEDAL_POSITION-val is deprecated.  Use smart_can_msgs-msg:RC_THRT_PEDAL_POSITION instead.")
  (RC_THRT_PEDAL_POSITION m))

(cl:ensure-generic-function 'RC_THRT_PEDAL_PRESS-val :lambda-list '(m))
(cl:defmethod RC_THRT_PEDAL_PRESS-val ((m <RC_THRT_DATA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_THRT_PEDAL_PRESS-val is deprecated.  Use smart_can_msgs-msg:RC_THRT_PEDAL_PRESS instead.")
  (RC_THRT_PEDAL_PRESS m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RC_THRT_DATA>) ostream)
  "Serializes a message object of type '<RC_THRT_DATA>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_THRT_PEDAL_POSITION)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_THRT_PEDAL_PRESS)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RC_THRT_DATA>) istream)
  "Deserializes a message object of type '<RC_THRT_DATA>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_THRT_PEDAL_POSITION)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_THRT_PEDAL_PRESS)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RC_THRT_DATA>)))
  "Returns string type for a message object of type '<RC_THRT_DATA>"
  "smart_can_msgs/RC_THRT_DATA")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RC_THRT_DATA)))
  "Returns string type for a message object of type 'RC_THRT_DATA"
  "smart_can_msgs/RC_THRT_DATA")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RC_THRT_DATA>)))
  "Returns md5sum for a message object of type '<RC_THRT_DATA>"
  "16f66a8758944d1f785808e5231f5e93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RC_THRT_DATA)))
  "Returns md5sum for a message object of type 'RC_THRT_DATA"
  "16f66a8758944d1f785808e5231f5e93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RC_THRT_DATA>)))
  "Returns full string definition for message of type '<RC_THRT_DATA>"
  (cl:format cl:nil "uint8 RC_THRT_PEDAL_POSITION~%uint8 RC_THRT_PEDAL_PRESS~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RC_THRT_DATA)))
  "Returns full string definition for message of type 'RC_THRT_DATA"
  (cl:format cl:nil "uint8 RC_THRT_PEDAL_POSITION~%uint8 RC_THRT_PEDAL_PRESS~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RC_THRT_DATA>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RC_THRT_DATA>))
  "Converts a ROS message object to a list"
  (cl:list 'RC_THRT_DATA
    (cl:cons ':RC_THRT_PEDAL_POSITION (RC_THRT_PEDAL_POSITION msg))
    (cl:cons ':RC_THRT_PEDAL_PRESS (RC_THRT_PEDAL_PRESS msg))
))
