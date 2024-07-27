; Auto-generated. Do not edit!


(cl:in-package smart_can_msgs-msg)


;//! \htmlinclude snd_RCUnit_SteeringData.msg.html

(cl:defclass <snd_RCUnit_SteeringData> (roslisp-msg-protocol:ros-message)
  ((RC_Steering_RightLimit
    :reader RC_Steering_RightLimit
    :initarg :RC_Steering_RightLimit
    :type cl:fixnum
    :initform 0)
   (RC_Steering_LeftLimit
    :reader RC_Steering_LeftLimit
    :initarg :RC_Steering_LeftLimit
    :type cl:fixnum
    :initform 0)
   (RC_SteeringPWM
    :reader RC_SteeringPWM
    :initarg :RC_SteeringPWM
    :type cl:fixnum
    :initform 0)
   (RC_SteeringDirection
    :reader RC_SteeringDirection
    :initarg :RC_SteeringDirection
    :type cl:fixnum
    :initform 0))
)

(cl:defclass snd_RCUnit_SteeringData (<snd_RCUnit_SteeringData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <snd_RCUnit_SteeringData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'snd_RCUnit_SteeringData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_can_msgs-msg:<snd_RCUnit_SteeringData> is deprecated: use smart_can_msgs-msg:snd_RCUnit_SteeringData instead.")))

(cl:ensure-generic-function 'RC_Steering_RightLimit-val :lambda-list '(m))
(cl:defmethod RC_Steering_RightLimit-val ((m <snd_RCUnit_SteeringData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_Steering_RightLimit-val is deprecated.  Use smart_can_msgs-msg:RC_Steering_RightLimit instead.")
  (RC_Steering_RightLimit m))

(cl:ensure-generic-function 'RC_Steering_LeftLimit-val :lambda-list '(m))
(cl:defmethod RC_Steering_LeftLimit-val ((m <snd_RCUnit_SteeringData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_Steering_LeftLimit-val is deprecated.  Use smart_can_msgs-msg:RC_Steering_LeftLimit instead.")
  (RC_Steering_LeftLimit m))

(cl:ensure-generic-function 'RC_SteeringPWM-val :lambda-list '(m))
(cl:defmethod RC_SteeringPWM-val ((m <snd_RCUnit_SteeringData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_SteeringPWM-val is deprecated.  Use smart_can_msgs-msg:RC_SteeringPWM instead.")
  (RC_SteeringPWM m))

(cl:ensure-generic-function 'RC_SteeringDirection-val :lambda-list '(m))
(cl:defmethod RC_SteeringDirection-val ((m <snd_RCUnit_SteeringData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_SteeringDirection-val is deprecated.  Use smart_can_msgs-msg:RC_SteeringDirection instead.")
  (RC_SteeringDirection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <snd_RCUnit_SteeringData>) ostream)
  "Serializes a message object of type '<snd_RCUnit_SteeringData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_Steering_RightLimit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_Steering_LeftLimit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_SteeringPWM)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RC_SteeringPWM)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_SteeringDirection)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <snd_RCUnit_SteeringData>) istream)
  "Deserializes a message object of type '<snd_RCUnit_SteeringData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_Steering_RightLimit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_Steering_LeftLimit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_SteeringPWM)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RC_SteeringPWM)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_SteeringDirection)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<snd_RCUnit_SteeringData>)))
  "Returns string type for a message object of type '<snd_RCUnit_SteeringData>"
  "smart_can_msgs/snd_RCUnit_SteeringData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'snd_RCUnit_SteeringData)))
  "Returns string type for a message object of type 'snd_RCUnit_SteeringData"
  "smart_can_msgs/snd_RCUnit_SteeringData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<snd_RCUnit_SteeringData>)))
  "Returns md5sum for a message object of type '<snd_RCUnit_SteeringData>"
  "dbaee7c633defae17cb1a658b42efed0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'snd_RCUnit_SteeringData)))
  "Returns md5sum for a message object of type 'snd_RCUnit_SteeringData"
  "dbaee7c633defae17cb1a658b42efed0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<snd_RCUnit_SteeringData>)))
  "Returns full string definition for message of type '<snd_RCUnit_SteeringData>"
  (cl:format cl:nil "uint8 RC_Steering_RightLimit~%uint8 RC_Steering_LeftLimit~%uint16 RC_SteeringPWM~%uint8 RC_SteeringDirection~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'snd_RCUnit_SteeringData)))
  "Returns full string definition for message of type 'snd_RCUnit_SteeringData"
  (cl:format cl:nil "uint8 RC_Steering_RightLimit~%uint8 RC_Steering_LeftLimit~%uint16 RC_SteeringPWM~%uint8 RC_SteeringDirection~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <snd_RCUnit_SteeringData>))
  (cl:+ 0
     1
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <snd_RCUnit_SteeringData>))
  "Converts a ROS message object to a list"
  (cl:list 'snd_RCUnit_SteeringData
    (cl:cons ':RC_Steering_RightLimit (RC_Steering_RightLimit msg))
    (cl:cons ':RC_Steering_LeftLimit (RC_Steering_LeftLimit msg))
    (cl:cons ':RC_SteeringPWM (RC_SteeringPWM msg))
    (cl:cons ':RC_SteeringDirection (RC_SteeringDirection msg))
))
