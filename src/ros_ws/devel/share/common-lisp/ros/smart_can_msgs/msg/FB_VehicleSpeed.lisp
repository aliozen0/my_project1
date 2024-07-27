; Auto-generated. Do not edit!


(cl:in-package smart_can_msgs-msg)


;//! \htmlinclude FB_VehicleSpeed.msg.html

(cl:defclass <FB_VehicleSpeed> (roslisp-msg-protocol:ros-message)
  ((FB_VehicleSpeed_KMh
    :reader FB_VehicleSpeed_KMh
    :initarg :FB_VehicleSpeed_KMh
    :type cl:fixnum
    :initform 0)
   (FB_ReelVehicleSpeed_KMh
    :reader FB_ReelVehicleSpeed_KMh
    :initarg :FB_ReelVehicleSpeed_KMh
    :type cl:fixnum
    :initform 0)
   (FB_ReelVehicleSpeed_Ms
    :reader FB_ReelVehicleSpeed_Ms
    :initarg :FB_ReelVehicleSpeed_Ms
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FB_VehicleSpeed (<FB_VehicleSpeed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FB_VehicleSpeed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FB_VehicleSpeed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name smart_can_msgs-msg:<FB_VehicleSpeed> is deprecated: use smart_can_msgs-msg:FB_VehicleSpeed instead.")))

(cl:ensure-generic-function 'FB_VehicleSpeed_KMh-val :lambda-list '(m))
(cl:defmethod FB_VehicleSpeed_KMh-val ((m <FB_VehicleSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_VehicleSpeed_KMh-val is deprecated.  Use smart_can_msgs-msg:FB_VehicleSpeed_KMh instead.")
  (FB_VehicleSpeed_KMh m))

(cl:ensure-generic-function 'FB_ReelVehicleSpeed_KMh-val :lambda-list '(m))
(cl:defmethod FB_ReelVehicleSpeed_KMh-val ((m <FB_VehicleSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_ReelVehicleSpeed_KMh-val is deprecated.  Use smart_can_msgs-msg:FB_ReelVehicleSpeed_KMh instead.")
  (FB_ReelVehicleSpeed_KMh m))

(cl:ensure-generic-function 'FB_ReelVehicleSpeed_Ms-val :lambda-list '(m))
(cl:defmethod FB_ReelVehicleSpeed_Ms-val ((m <FB_VehicleSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader smart_can_msgs-msg:FB_ReelVehicleSpeed_Ms-val is deprecated.  Use smart_can_msgs-msg:FB_ReelVehicleSpeed_Ms instead.")
  (FB_ReelVehicleSpeed_Ms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FB_VehicleSpeed>) ostream)
  "Serializes a message object of type '<FB_VehicleSpeed>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_VehicleSpeed_KMh)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_ReelVehicleSpeed_KMh)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_ReelVehicleSpeed_Ms)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FB_VehicleSpeed>) istream)
  "Deserializes a message object of type '<FB_VehicleSpeed>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_VehicleSpeed_KMh)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_ReelVehicleSpeed_KMh)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FB_ReelVehicleSpeed_Ms)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FB_VehicleSpeed>)))
  "Returns string type for a message object of type '<FB_VehicleSpeed>"
  "smart_can_msgs/FB_VehicleSpeed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FB_VehicleSpeed)))
  "Returns string type for a message object of type 'FB_VehicleSpeed"
  "smart_can_msgs/FB_VehicleSpeed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FB_VehicleSpeed>)))
  "Returns md5sum for a message object of type '<FB_VehicleSpeed>"
  "c33a97169dc1ce3d22f45b0581cd9f66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FB_VehicleSpeed)))
  "Returns md5sum for a message object of type 'FB_VehicleSpeed"
  "c33a97169dc1ce3d22f45b0581cd9f66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FB_VehicleSpeed>)))
  "Returns full string definition for message of type '<FB_VehicleSpeed>"
  (cl:format cl:nil "uint8 FB_VehicleSpeed_KMh~%uint8 FB_ReelVehicleSpeed_KMh~%uint8 FB_ReelVehicleSpeed_Ms~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FB_VehicleSpeed)))
  "Returns full string definition for message of type 'FB_VehicleSpeed"
  (cl:format cl:nil "uint8 FB_VehicleSpeed_KMh~%uint8 FB_ReelVehicleSpeed_KMh~%uint8 FB_ReelVehicleSpeed_Ms~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FB_VehicleSpeed>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FB_VehicleSpeed>))
  "Converts a ROS message object to a list"
  (cl:list 'FB_VehicleSpeed
    (cl:cons ':FB_VehicleSpeed_KMh (FB_VehicleSpeed_KMh msg))
    (cl:cons ':FB_ReelVehicleSpeed_KMh (FB_ReelVehicleSpeed_KMh msg))
    (cl:cons ':FB_ReelVehicleSpeed_Ms (FB_ReelVehicleSpeed_Ms msg))
))
