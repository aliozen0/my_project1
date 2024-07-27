; Auto-generated. Do not edit!


(cl:in-package smart_can_msgs-msg)


;//! \htmlinclude snd_RCUnit_HandBrakeData.msg.html

(cl:defclass <snd_RCUnit_HandBrakeData> (roslisp-msg-protocol:ros-message)
  ((RC_HB_PwmValue
    :reader RC_HB_PwmValue
    :initarg :RC_HB_PwmValue
    :type cl:fixnum
    :initform 0)
   (RC_HandBrake_PRESS
    :reader RC_HandBrake_PRESS
    :initarg :RC_HandBrake_PRESS
    :type cl:fixnum
    :initform 0)
   (RC_HandBrake_FREE
    :reader RC_HandBrake_FREE
    :initarg :RC_HandBrake_FREE
    :type cl:fixnum
    :initform 0)
   (RC_HandBrakeData
    :reader RC_HandBrakeData
    :initarg :RC_HandBrakeData
    :type cl:fixnum
    :initform 0))
)

(cl:defclass snd_RCUnit_HandBrakeData (<snd_RCUnit_HandBrakeData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <snd_RCUnit_HandBrakeData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'snd_RCUnit_HandBrakeData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_can_msgs-msg:<snd_RCUnit_HandBrakeData> is deprecated: use smart_can_msgs-msg:snd_RCUnit_HandBrakeData instead.")))

(cl:ensure-generic-function 'RC_HB_PwmValue-val :lambda-list '(m))
(cl:defmethod RC_HB_PwmValue-val ((m <snd_RCUnit_HandBrakeData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_HB_PwmValue-val is deprecated.  Use smart_can_msgs-msg:RC_HB_PwmValue instead.")
  (RC_HB_PwmValue m))

(cl:ensure-generic-function 'RC_HandBrake_PRESS-val :lambda-list '(m))
(cl:defmethod RC_HandBrake_PRESS-val ((m <snd_RCUnit_HandBrakeData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_HandBrake_PRESS-val is deprecated.  Use smart_can_msgs-msg:RC_HandBrake_PRESS instead.")
  (RC_HandBrake_PRESS m))

(cl:ensure-generic-function 'RC_HandBrake_FREE-val :lambda-list '(m))
(cl:defmethod RC_HandBrake_FREE-val ((m <snd_RCUnit_HandBrakeData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_HandBrake_FREE-val is deprecated.  Use smart_can_msgs-msg:RC_HandBrake_FREE instead.")
  (RC_HandBrake_FREE m))

(cl:ensure-generic-function 'RC_HandBrakeData-val :lambda-list '(m))
(cl:defmethod RC_HandBrakeData-val ((m <snd_RCUnit_HandBrakeData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_HandBrakeData-val is deprecated.  Use smart_can_msgs-msg:RC_HandBrakeData instead.")
  (RC_HandBrakeData m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <snd_RCUnit_HandBrakeData>) ostream)
  "Serializes a message object of type '<snd_RCUnit_HandBrakeData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_HB_PwmValue)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RC_HB_PwmValue)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_HandBrake_PRESS)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_HandBrake_FREE)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_HandBrakeData)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <snd_RCUnit_HandBrakeData>) istream)
  "Deserializes a message object of type '<snd_RCUnit_HandBrakeData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_HB_PwmValue)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RC_HB_PwmValue)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_HandBrake_PRESS)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_HandBrake_FREE)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_HandBrakeData)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<snd_RCUnit_HandBrakeData>)))
  "Returns string type for a message object of type '<snd_RCUnit_HandBrakeData>"
  "smart_can_msgs/snd_RCUnit_HandBrakeData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'snd_RCUnit_HandBrakeData)))
  "Returns string type for a message object of type 'snd_RCUnit_HandBrakeData"
  "smart_can_msgs/snd_RCUnit_HandBrakeData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<snd_RCUnit_HandBrakeData>)))
  "Returns md5sum for a message object of type '<snd_RCUnit_HandBrakeData>"
  "faee69d41fe0c8f41ca0166523232a9b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'snd_RCUnit_HandBrakeData)))
  "Returns md5sum for a message object of type 'snd_RCUnit_HandBrakeData"
  "faee69d41fe0c8f41ca0166523232a9b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<snd_RCUnit_HandBrakeData>)))
  "Returns full string definition for message of type '<snd_RCUnit_HandBrakeData>"
  (cl:format cl:nil "uint16 RC_HB_PwmValue~%uint8 RC_HandBrake_PRESS~%uint8 RC_HandBrake_FREE~%uint8 RC_HandBrakeData~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'snd_RCUnit_HandBrakeData)))
  "Returns full string definition for message of type 'snd_RCUnit_HandBrakeData"
  (cl:format cl:nil "uint16 RC_HB_PwmValue~%uint8 RC_HandBrake_PRESS~%uint8 RC_HandBrake_FREE~%uint8 RC_HandBrakeData~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <snd_RCUnit_HandBrakeData>))
  (cl:+ 0
     2
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <snd_RCUnit_HandBrakeData>))
  "Converts a ROS message object to a list"
  (cl:list 'snd_RCUnit_HandBrakeData
    (cl:cons ':RC_HB_PwmValue (RC_HB_PwmValue msg))
    (cl:cons ':RC_HandBrake_PRESS (RC_HandBrake_PRESS msg))
    (cl:cons ':RC_HandBrake_FREE (RC_HandBrake_FREE msg))
    (cl:cons ':RC_HandBrakeData (RC_HandBrakeData msg))
))
