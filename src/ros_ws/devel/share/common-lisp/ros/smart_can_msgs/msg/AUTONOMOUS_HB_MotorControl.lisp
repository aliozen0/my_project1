; Auto-generated. Do not edit!


(cl:in-package smart_can_msgs-msg)


;//! \htmlinclude AUTONOMOUS_HB_MotorControl.msg.html

(cl:defclass <AUTONOMOUS_HB_MotorControl> (roslisp-msg-protocol:ros-message)
  ((AUTONOMOUS_HB_Motor_PWM
    :reader AUTONOMOUS_HB_Motor_PWM
    :initarg :AUTONOMOUS_HB_Motor_PWM
    :type cl:fixnum
    :initform 0)
   (AUTONOMOUS_HB_MotState
    :reader AUTONOMOUS_HB_MotState
    :initarg :AUTONOMOUS_HB_MotState
    :type cl:fixnum
    :initform 0)
   (AUTONOMOUS_HB_MotEN
    :reader AUTONOMOUS_HB_MotEN
    :initarg :AUTONOMOUS_HB_MotEN
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AUTONOMOUS_HB_MotorControl (<AUTONOMOUS_HB_MotorControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AUTONOMOUS_HB_MotorControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AUTONOMOUS_HB_MotorControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_can_msgs-msg:<AUTONOMOUS_HB_MotorControl> is deprecated: use smart_can_msgs-msg:AUTONOMOUS_HB_MotorControl instead.")))

(cl:ensure-generic-function 'AUTONOMOUS_HB_Motor_PWM-val :lambda-list '(m))
(cl:defmethod AUTONOMOUS_HB_Motor_PWM-val ((m <AUTONOMOUS_HB_MotorControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:AUTONOMOUS_HB_Motor_PWM-val is deprecated.  Use smart_can_msgs-msg:AUTONOMOUS_HB_Motor_PWM instead.")
  (AUTONOMOUS_HB_Motor_PWM m))

(cl:ensure-generic-function 'AUTONOMOUS_HB_MotState-val :lambda-list '(m))
(cl:defmethod AUTONOMOUS_HB_MotState-val ((m <AUTONOMOUS_HB_MotorControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:AUTONOMOUS_HB_MotState-val is deprecated.  Use smart_can_msgs-msg:AUTONOMOUS_HB_MotState instead.")
  (AUTONOMOUS_HB_MotState m))

(cl:ensure-generic-function 'AUTONOMOUS_HB_MotEN-val :lambda-list '(m))
(cl:defmethod AUTONOMOUS_HB_MotEN-val ((m <AUTONOMOUS_HB_MotorControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:AUTONOMOUS_HB_MotEN-val is deprecated.  Use smart_can_msgs-msg:AUTONOMOUS_HB_MotEN instead.")
  (AUTONOMOUS_HB_MotEN m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AUTONOMOUS_HB_MotorControl>) ostream)
  "Serializes a message object of type '<AUTONOMOUS_HB_MotorControl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AUTONOMOUS_HB_Motor_PWM)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AUTONOMOUS_HB_MotState)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AUTONOMOUS_HB_MotEN)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AUTONOMOUS_HB_MotorControl>) istream)
  "Deserializes a message object of type '<AUTONOMOUS_HB_MotorControl>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AUTONOMOUS_HB_Motor_PWM)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AUTONOMOUS_HB_MotState)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'AUTONOMOUS_HB_MotEN)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AUTONOMOUS_HB_MotorControl>)))
  "Returns string type for a message object of type '<AUTONOMOUS_HB_MotorControl>"
  "smart_can_msgs/AUTONOMOUS_HB_MotorControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AUTONOMOUS_HB_MotorControl)))
  "Returns string type for a message object of type 'AUTONOMOUS_HB_MotorControl"
  "smart_can_msgs/AUTONOMOUS_HB_MotorControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AUTONOMOUS_HB_MotorControl>)))
  "Returns md5sum for a message object of type '<AUTONOMOUS_HB_MotorControl>"
  "5bce3dd6587bd24ef1eee71abfb3adf7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AUTONOMOUS_HB_MotorControl)))
  "Returns md5sum for a message object of type 'AUTONOMOUS_HB_MotorControl"
  "5bce3dd6587bd24ef1eee71abfb3adf7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AUTONOMOUS_HB_MotorControl>)))
  "Returns full string definition for message of type '<AUTONOMOUS_HB_MotorControl>"
  (cl:format cl:nil "uint8 AUTONOMOUS_HB_Motor_PWM~%uint8 AUTONOMOUS_HB_MotState~%uint8 AUTONOMOUS_HB_MotEN~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AUTONOMOUS_HB_MotorControl)))
  "Returns full string definition for message of type 'AUTONOMOUS_HB_MotorControl"
  (cl:format cl:nil "uint8 AUTONOMOUS_HB_Motor_PWM~%uint8 AUTONOMOUS_HB_MotState~%uint8 AUTONOMOUS_HB_MotEN~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AUTONOMOUS_HB_MotorControl>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AUTONOMOUS_HB_MotorControl>))
  "Converts a ROS message object to a list"
  (cl:list 'AUTONOMOUS_HB_MotorControl
    (cl:cons ':AUTONOMOUS_HB_Motor_PWM (AUTONOMOUS_HB_Motor_PWM msg))
    (cl:cons ':AUTONOMOUS_HB_MotState (AUTONOMOUS_HB_MotState msg))
    (cl:cons ':AUTONOMOUS_HB_MotEN (AUTONOMOUS_HB_MotEN msg))
))
