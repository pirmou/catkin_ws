; Auto-generated. Do not edit!


(cl:in-package turtlebot_arm_object_manipulation-msg)


;//! \htmlinclude UserCommandFeedback.msg.html

(cl:defclass <UserCommandFeedback> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass UserCommandFeedback (<UserCommandFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UserCommandFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UserCommandFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot_arm_object_manipulation-msg:<UserCommandFeedback> is deprecated: use turtlebot_arm_object_manipulation-msg:UserCommandFeedback instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <UserCommandFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot_arm_object_manipulation-msg:status-val is deprecated.  Use turtlebot_arm_object_manipulation-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UserCommandFeedback>) ostream)
  "Serializes a message object of type '<UserCommandFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UserCommandFeedback>) istream)
  "Deserializes a message object of type '<UserCommandFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UserCommandFeedback>)))
  "Returns string type for a message object of type '<UserCommandFeedback>"
  "turtlebot_arm_object_manipulation/UserCommandFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UserCommandFeedback)))
  "Returns string type for a message object of type 'UserCommandFeedback"
  "turtlebot_arm_object_manipulation/UserCommandFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UserCommandFeedback>)))
  "Returns md5sum for a message object of type '<UserCommandFeedback>"
  "4fe5af303955c287688e7347e9b00278")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UserCommandFeedback)))
  "Returns md5sum for a message object of type 'UserCommandFeedback"
  "4fe5af303955c287688e7347e9b00278")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UserCommandFeedback>)))
  "Returns full string definition for message of type '<UserCommandFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UserCommandFeedback)))
  "Returns full string definition for message of type 'UserCommandFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%string status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UserCommandFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UserCommandFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'UserCommandFeedback
    (cl:cons ':status (status msg))
))
