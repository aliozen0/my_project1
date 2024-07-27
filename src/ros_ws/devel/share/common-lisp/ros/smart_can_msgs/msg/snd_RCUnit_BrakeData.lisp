; Auto-generated. Do not edit!


(cl:in-package smart_can_msgs-msg)


;//! \htmlinclude snd_RCUnit_BrakeData.msg.html

(cl:defclass <snd_RCUnit_BrakeData> (roslisp-msg-protocol:ros-message)
  ((RC_BrakePedal_Speed
    :reader RC_BrakePedal_Speed
    :initarg :RC_BrakePedal_Speed
    :type cl:fixnum
    :initform 0)
   (RC_BrakePedal_Acc
    :reader RC_BrakePedal_Acc
    :initarg :RC_BrakePedal_Acc
    :type cl:fixnum
    :initform 0)
   (RC_BrakePedal_Pos
    :reader RC_BrakePedal_Pos
    :initarg :RC_BrakePedal_Pos
    :type cl:fixnum
    :initform 0))
)

(cl:defclass snd_RCUnit_BrakeData (<snd_RCUnit_BrakeData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <snd_RCUnit_BrakeData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'snd_RCUnit_BrakeData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_can_msgs-msg:<snd_RCUnit_BrakeData> is deprecated: use smart_can_msgs-msg:snd_RCUnit_BrakeData instead.")))

(cl:ensure-generic-function 'RC_BrakePedal_Speed-val :lambda-list '(m))
(cl:defmethod RC_BrakePedal_Speed-val ((m <snd_RCUnit_BrakeData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_BrakePedal_Speed-val is deprecated.  Use smart_can_msgs-msg:RC_BrakePedal_Speed instead.")
  (RC_BrakePedal_Speed m))

(cl:ensure-generic-function 'RC_BrakePedal_Acc-val :lambda-list '(m))
(cl:defmethod RC_BrakePedal_Acc-val ((m <snd_RCUnit_BrakeData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_BrakePedal_Acc-val is deprecated.  Use smart_can_msgs-msg:RC_BrakePedal_Acc instead.")
  (RC_BrakePedal_Acc m))

(cl:ensure-generic-function 'RC_BrakePedal_Pos-val :lambda-list '(m))
(cl:defmethod RC_BrakePedal_Pos-val ((m <snd_RCUnit_BrakeData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_BrakePedal_Pos-val is deprecated.  Use smart_can_msgs-msg:RC_BrakePedal_Pos instead.")
  (RC_BrakePedal_Pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <snd_RCUnit_BrakeData>) ostream)
  "Serializes a message object of type '<snd_RCUnit_BrakeData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_BrakePedal_Speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RC_BrakePedal_Speed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_BrakePedal_Acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RC_BrakePedal_Acc)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_BrakePedal_Pos)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <snd_RCUnit_BrakeData>) istream)
  "Deserializes a message object of type '<snd_RCUnit_BrakeData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_BrakePedal_Speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RC_BrakePedal_Speed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_BrakePedal_Acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RC_BrakePedal_Acc)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_BrakePedal_Pos)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<snd_RCUnit_BrakeData>)))
  "Returns string type for a message object of type '<snd_RCUnit_BrakeData>"
  "smart_can_msgs/snd_RCUnit_BrakeData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'snd_RCUnit_BrakeData)))
  "Returns string type for a message object of type 'snd_RCUnit_BrakeData"
  "smart_can_msgs/snd_RCUnit_BrakeData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<snd_RCUnit_BrakeData>)))
  "Returns md5sum for a message object of type '<snd_RCUnit_BrakeData>"
  "650ea666f66da37d4464c1053ef96d40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'snd_RCUnit_BrakeData)))
  "Returns md5sum for a message object of type 'snd_RCUnit_BrakeData"
  "650ea666f66da37d4464c1053ef96d40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<snd_RCUnit_BrakeData>)))
  "Returns full string definition for message of type '<snd_RCUnit_BrakeData>"
  (cl:format cl:nil "uint16 RC_BrakePedal_Speed~%uint16 RC_BrakePedal_Acc~%uint8 RC_BrakePedal_Pos~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'snd_RCUnit_BrakeData)))
  "Returns full string definition for message of type 'snd_RCUnit_BrakeData"
  (cl:format cl:nil "uint16 RC_BrakePedal_Speed~%uint16 RC_BrakePedal_Acc~%uint8 RC_BrakePedal_Pos~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <snd_RCUnit_BrakeData>))
  (cl:+ 0
     2
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <snd_RCUnit_BrakeData>))
  "Converts a ROS message object to a list"
  (cl:list 'snd_RCUnit_BrakeData
    (cl:cons ':RC_BrakePedal_Speed (RC_BrakePedal_Speed msg))
    (cl:cons ':RC_BrakePedal_Acc (RC_BrakePedal_Acc msg))
    (cl:cons ':RC_BrakePedal_Pos (RC_BrakePedal_Pos msg))
))
