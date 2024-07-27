; Auto-generated. Do not edit!


(cl:in-package smart_can_msgs-msg)


;//! \htmlinclude kinematic_messages.msg.html

(cl:defclass <kinematic_messages> (roslisp-msg-protocol:ros-message)
  ((joint_type
    :reader joint_type
    :initarg :joint_type
    :type cl:fixnum
    :initform 0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (angle_y
    :reader angle_y
    :initarg :angle_y
    :type cl:float
    :initform 0.0)
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type cl:float
    :initform 0.0)
   (link_length
    :reader link_length
    :initarg :link_length
    :type cl:float
    :initform 0.0))
)

(cl:defclass kinematic_messages (<kinematic_messages>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kinematic_messages>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kinematic_messages)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_can_msgs-msg:<kinematic_messages> is deprecated: use smart_can_msgs-msg:kinematic_messages instead.")))

(cl:ensure-generic-function 'joint_type-val :lambda-list '(m))
(cl:defmethod joint_type-val ((m <kinematic_messages>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:joint_type-val is deprecated.  Use smart_can_msgs-msg:joint_type instead.")
  (joint_type m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <kinematic_messages>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:angle-val is deprecated.  Use smart_can_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'angle_y-val :lambda-list '(m))
(cl:defmethod angle_y-val ((m <kinematic_messages>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:angle_y-val is deprecated.  Use smart_can_msgs-msg:angle_y instead.")
  (angle_y m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <kinematic_messages>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:angular_velocity-val is deprecated.  Use smart_can_msgs-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'link_length-val :lambda-list '(m))
(cl:defmethod link_length-val ((m <kinematic_messages>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:link_length-val is deprecated.  Use smart_can_msgs-msg:link_length instead.")
  (link_length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kinematic_messages>) ostream)
  "Serializes a message object of type '<kinematic_messages>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joint_type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'link_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kinematic_messages>) istream)
  "Deserializes a message object of type '<kinematic_messages>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joint_type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'link_length) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kinematic_messages>)))
  "Returns string type for a message object of type '<kinematic_messages>"
  "smart_can_msgs/kinematic_messages")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinematic_messages)))
  "Returns string type for a message object of type 'kinematic_messages"
  "smart_can_msgs/kinematic_messages")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kinematic_messages>)))
  "Returns md5sum for a message object of type '<kinematic_messages>"
  "7bc7418ecb7fee03d277ee78209c3d4d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kinematic_messages)))
  "Returns md5sum for a message object of type 'kinematic_messages"
  "7bc7418ecb7fee03d277ee78209c3d4d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kinematic_messages>)))
  "Returns full string definition for message of type '<kinematic_messages>"
  (cl:format cl:nil "uint8 joint_type~%float32 angle~%float32 angle_y~%float32 angular_velocity~%float32 link_length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kinematic_messages)))
  "Returns full string definition for message of type 'kinematic_messages"
  (cl:format cl:nil "uint8 joint_type~%float32 angle~%float32 angle_y~%float32 angular_velocity~%float32 link_length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kinematic_messages>))
  (cl:+ 0
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kinematic_messages>))
  "Converts a ROS message object to a list"
  (cl:list 'kinematic_messages
    (cl:cons ':joint_type (joint_type msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':angle_y (angle_y msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':link_length (link_length msg))
))
