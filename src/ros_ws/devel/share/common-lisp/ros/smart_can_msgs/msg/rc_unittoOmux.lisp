; Auto-generated. Do not edit!


(cl:in-package smart_can_msgs-msg)


;//! \htmlinclude rc_unittoOmux.msg.html

(cl:defclass <rc_unittoOmux> (roslisp-msg-protocol:ros-message)
  ((AUTONOMOUS_EMERGENCY
    :reader AUTONOMOUS_EMERGENCY
    :initarg :AUTONOMOUS_EMERGENCY
    :type cl:fixnum
    :initform 0)
   (RC_WindowResintance
    :reader RC_WindowResintance
    :initarg :RC_WindowResintance
    :type cl:fixnum
    :initform 0)
   (RC_InteriorLight
    :reader RC_InteriorLight
    :initarg :RC_InteriorLight
    :type cl:fixnum
    :initform 0)
   (RC_ReverseLight
    :reader RC_ReverseLight
    :initarg :RC_ReverseLight
    :type cl:fixnum
    :initform 0)
   (RC_DRL
    :reader RC_DRL
    :initarg :RC_DRL
    :type cl:fixnum
    :initform 0)
   (RC_BrakeLight
    :reader RC_BrakeLight
    :initarg :RC_BrakeLight
    :type cl:fixnum
    :initform 0)
   (AUTONOMOUS_DOOR_OPEN
    :reader AUTONOMOUS_DOOR_OPEN
    :initarg :AUTONOMOUS_DOOR_OPEN
    :type cl:fixnum
    :initform 0)
   (AUTONOMOUS_DOOR_CLOSE
    :reader AUTONOMOUS_DOOR_CLOSE
    :initarg :AUTONOMOUS_DOOR_CLOSE
    :type cl:fixnum
    :initform 0)
   (RC_SignalStatus
    :reader RC_SignalStatus
    :initarg :RC_SignalStatus
    :type cl:fixnum
    :initform 0)
   (RC_LowBeam
    :reader RC_LowBeam
    :initarg :RC_LowBeam
    :type cl:fixnum
    :initform 0)
   (RC_HighBeam
    :reader RC_HighBeam
    :initarg :RC_HighBeam
    :type cl:fixnum
    :initform 0)
   (RC_SelectionGear
    :reader RC_SelectionGear
    :initarg :RC_SelectionGear
    :type cl:fixnum
    :initform 0)
   (RC_Ignition
    :reader RC_Ignition
    :initarg :RC_Ignition
    :type cl:fixnum
    :initform 0))
)

(cl:defclass rc_unittoOmux (<rc_unittoOmux>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rc_unittoOmux>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rc_unittoOmux)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_can_msgs-msg:<rc_unittoOmux> is deprecated: use smart_can_msgs-msg:rc_unittoOmux instead.")))

(cl:ensure-generic-function 'AUTONOMOUS_EMERGENCY-val :lambda-list '(m))
(cl:defmethod AUTONOMOUS_EMERGENCY-val ((m <rc_unittoOmux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:AUTONOMOUS_EMERGENCY-val is deprecated.  Use smart_can_msgs-msg:AUTONOMOUS_EMERGENCY instead.")
  (AUTONOMOUS_EMERGENCY m))

(cl:ensure-generic-function 'RC_WindowResintance-val :lambda-list '(m))
(cl:defmethod RC_WindowResintance-val ((m <rc_unittoOmux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_WindowResintance-val is deprecated.  Use smart_can_msgs-msg:RC_WindowResintance instead.")
  (RC_WindowResintance m))

(cl:ensure-generic-function 'RC_InteriorLight-val :lambda-list '(m))
(cl:defmethod RC_InteriorLight-val ((m <rc_unittoOmux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_InteriorLight-val is deprecated.  Use smart_can_msgs-msg:RC_InteriorLight instead.")
  (RC_InteriorLight m))

(cl:ensure-generic-function 'RC_ReverseLight-val :lambda-list '(m))
(cl:defmethod RC_ReverseLight-val ((m <rc_unittoOmux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_ReverseLight-val is deprecated.  Use smart_can_msgs-msg:RC_ReverseLight instead.")
  (RC_ReverseLight m))

(cl:ensure-generic-function 'RC_DRL-val :lambda-list '(m))
(cl:defmethod RC_DRL-val ((m <rc_unittoOmux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_DRL-val is deprecated.  Use smart_can_msgs-msg:RC_DRL instead.")
  (RC_DRL m))

(cl:ensure-generic-function 'RC_BrakeLight-val :lambda-list '(m))
(cl:defmethod RC_BrakeLight-val ((m <rc_unittoOmux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_BrakeLight-val is deprecated.  Use smart_can_msgs-msg:RC_BrakeLight instead.")
  (RC_BrakeLight m))

(cl:ensure-generic-function 'AUTONOMOUS_DOOR_OPEN-val :lambda-list '(m))
(cl:defmethod AUTONOMOUS_DOOR_OPEN-val ((m <rc_unittoOmux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:AUTONOMOUS_DOOR_OPEN-val is deprecated.  Use smart_can_msgs-msg:AUTONOMOUS_DOOR_OPEN instead.")
  (AUTONOMOUS_DOOR_OPEN m))

(cl:ensure-generic-function 'AUTONOMOUS_DOOR_CLOSE-val :lambda-list '(m))
(cl:defmethod AUTONOMOUS_DOOR_CLOSE-val ((m <rc_unittoOmux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:AUTONOMOUS_DOOR_CLOSE-val is deprecated.  Use smart_can_msgs-msg:AUTONOMOUS_DOOR_CLOSE instead.")
  (AUTONOMOUS_DOOR_CLOSE m))

(cl:ensure-generic-function 'RC_SignalStatus-val :lambda-list '(m))
(cl:defmethod RC_SignalStatus-val ((m <rc_unittoOmux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_SignalStatus-val is deprecated.  Use smart_can_msgs-msg:RC_SignalStatus instead.")
  (RC_SignalStatus m))

(cl:ensure-generic-function 'RC_LowBeam-val :lambda-list '(m))
(cl:defmethod RC_LowBeam-val ((m <rc_unittoOmux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_LowBeam-val is deprecated.  Use smart_can_msgs-msg:RC_LowBeam instead.")
  (RC_LowBeam m))

(cl:ensure-generic-function 'RC_HighBeam-val :lambda-list '(m))
(cl:defmethod RC_HighBeam-val ((m <rc_unittoOmux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_HighBeam-val is deprecated.  Use smart_can_msgs-msg:RC_HighBeam instead.")
  (RC_HighBeam m))

(cl:ensure-generic-function 'RC_SelectionGear-val :lambda-list '(m))
(cl:defmethod RC_SelectionGear-val ((m <rc_unittoOmux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_SelectionGear-val is deprecated.  Use smart_can_msgs-msg:RC_SelectionGear instead.")
  (RC_SelectionGear m))

(cl:ensure-generic-function 'RC_Ignition-val :lambda-list '(m))
(cl:defmethod RC_Ignition-val ((m <rc_unittoOmux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:RC_Ignition-val is deprecated.  Use smart_can_msgs-msg:RC_Ignition instead.")
  (RC_Ignition m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rc_unittoOmux>) ostream)
  "Serializes a message object of type '<rc_unittoOmux>"
  (cl:let* ((signed (cl:slot-value msg 'AUTONOMOUS_EMERGENCY)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_WindowResintance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_InteriorLight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_ReverseLight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_DRL)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_BrakeLight)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'AUTONOMOUS_DOOR_OPEN)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'AUTONOMOUS_DOOR_CLOSE)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_SignalStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_LowBeam)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_HighBeam)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_SelectionGear)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_Ignition)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rc_unittoOmux>) istream)
  "Deserializes a message object of type '<rc_unittoOmux>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AUTONOMOUS_EMERGENCY) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_WindowResintance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_InteriorLight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_ReverseLight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_DRL)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_BrakeLight)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AUTONOMOUS_DOOR_OPEN) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AUTONOMOUS_DOOR_CLOSE) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_SignalStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_LowBeam)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_HighBeam)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_SelectionGear)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RC_Ignition)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rc_unittoOmux>)))
  "Returns string type for a message object of type '<rc_unittoOmux>"
  "smart_can_msgs/rc_unittoOmux")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rc_unittoOmux)))
  "Returns string type for a message object of type 'rc_unittoOmux"
  "smart_can_msgs/rc_unittoOmux")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rc_unittoOmux>)))
  "Returns md5sum for a message object of type '<rc_unittoOmux>"
  "5a9878d79a5dbdeedaf385d69bb9ad39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rc_unittoOmux)))
  "Returns md5sum for a message object of type 'rc_unittoOmux"
  "5a9878d79a5dbdeedaf385d69bb9ad39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rc_unittoOmux>)))
  "Returns full string definition for message of type '<rc_unittoOmux>"
  (cl:format cl:nil "int8 AUTONOMOUS_EMERGENCY~%uint8 RC_WindowResintance~%uint8 RC_InteriorLight~%uint8 RC_ReverseLight~%uint8 RC_DRL~%uint8 RC_BrakeLight~%int8 AUTONOMOUS_DOOR_OPEN~%int8 AUTONOMOUS_DOOR_CLOSE~%uint8 RC_SignalStatus~%uint8 RC_LowBeam~%uint8 RC_HighBeam~%uint8 RC_SelectionGear~%uint8 RC_Ignition~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rc_unittoOmux)))
  "Returns full string definition for message of type 'rc_unittoOmux"
  (cl:format cl:nil "int8 AUTONOMOUS_EMERGENCY~%uint8 RC_WindowResintance~%uint8 RC_InteriorLight~%uint8 RC_ReverseLight~%uint8 RC_DRL~%uint8 RC_BrakeLight~%int8 AUTONOMOUS_DOOR_OPEN~%int8 AUTONOMOUS_DOOR_CLOSE~%uint8 RC_SignalStatus~%uint8 RC_LowBeam~%uint8 RC_HighBeam~%uint8 RC_SelectionGear~%uint8 RC_Ignition~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rc_unittoOmux>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rc_unittoOmux>))
  "Converts a ROS message object to a list"
  (cl:list 'rc_unittoOmux
    (cl:cons ':AUTONOMOUS_EMERGENCY (AUTONOMOUS_EMERGENCY msg))
    (cl:cons ':RC_WindowResintance (RC_WindowResintance msg))
    (cl:cons ':RC_InteriorLight (RC_InteriorLight msg))
    (cl:cons ':RC_ReverseLight (RC_ReverseLight msg))
    (cl:cons ':RC_DRL (RC_DRL msg))
    (cl:cons ':RC_BrakeLight (RC_BrakeLight msg))
    (cl:cons ':AUTONOMOUS_DOOR_OPEN (AUTONOMOUS_DOOR_OPEN msg))
    (cl:cons ':AUTONOMOUS_DOOR_CLOSE (AUTONOMOUS_DOOR_CLOSE msg))
    (cl:cons ':RC_SignalStatus (RC_SignalStatus msg))
    (cl:cons ':RC_LowBeam (RC_LowBeam msg))
    (cl:cons ':RC_HighBeam (RC_HighBeam msg))
    (cl:cons ':RC_SelectionGear (RC_SelectionGear msg))
    (cl:cons ':RC_Ignition (RC_Ignition msg))
))
