; Auto-generated. Do not edit!


(cl:in-package smart_can_msgs-msg)


;//! \htmlinclude kinematic_settings.msg.html

(cl:defclass <kinematic_settings> (roslisp-msg-protocol:ros-message)
  ((kinematics
    :reader kinematics
    :initarg :kinematics
    :type cl:fixnum
    :initform 0)
   (enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass kinematic_settings (<kinematic_settings>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kinematic_settings>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kinematic_settings)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_can_msgs-msg:<kinematic_settings> is deprecated: use smart_can_msgs-msg:kinematic_settings instead.")))

(cl:ensure-generic-function 'kinematics-val :lambda-list '(m))
(cl:defmethod kinematics-val ((m <kinematic_settings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:kinematics-val is deprecated.  Use smart_can_msgs-msg:kinematics instead.")
  (kinematics m))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <kinematic_settings>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:enable-val is deprecated.  Use smart_can_msgs-msg:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kinematic_settings>) ostream)
  "Serializes a message object of type '<kinematic_settings>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'kinematics)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kinematic_settings>) istream)
  "Deserializes a message object of type '<kinematic_settings>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'kinematics)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kinematic_settings>)))
  "Returns string type for a message object of type '<kinematic_settings>"
  "smart_can_msgs/kinematic_settings")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kinematic_settings)))
  "Returns string type for a message object of type 'kinematic_settings"
  "smart_can_msgs/kinematic_settings")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kinematic_settings>)))
  "Returns md5sum for a message object of type '<kinematic_settings>"
  "cd0a182ea13ba72984dfa70a9b4dc4da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kinematic_settings)))
  "Returns md5sum for a message object of type 'kinematic_settings"
  "cd0a182ea13ba72984dfa70a9b4dc4da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kinematic_settings>)))
  "Returns full string definition for message of type '<kinematic_settings>"
  (cl:format cl:nil "uint8 kinematics~%bool enable~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kinematic_settings)))
  "Returns full string definition for message of type 'kinematic_settings"
  (cl:format cl:nil "uint8 kinematics~%bool enable~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kinematic_settings>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kinematic_settings>))
  "Converts a ROS message object to a list"
  (cl:list 'kinematic_settings
    (cl:cons ':kinematics (kinematics msg))
    (cl:cons ':enable (enable msg))
))
