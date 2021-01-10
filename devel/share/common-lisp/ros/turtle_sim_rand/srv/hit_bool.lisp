; Auto-generated. Do not edit!


(cl:in-package turtle_sim_rand-srv)


;//! \htmlinclude hit_bool-request.msg.html

(cl:defclass <hit_bool-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass hit_bool-request (<hit_bool-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <hit_bool-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'hit_bool-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_sim_rand-srv:<hit_bool-request> is deprecated: use turtle_sim_rand-srv:hit_bool-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <hit_bool-request>) ostream)
  "Serializes a message object of type '<hit_bool-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <hit_bool-request>) istream)
  "Deserializes a message object of type '<hit_bool-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<hit_bool-request>)))
  "Returns string type for a service object of type '<hit_bool-request>"
  "turtle_sim_rand/hit_boolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hit_bool-request)))
  "Returns string type for a service object of type 'hit_bool-request"
  "turtle_sim_rand/hit_boolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<hit_bool-request>)))
  "Returns md5sum for a message object of type '<hit_bool-request>"
  "0200bb62d2df4cba0774b881d9226b0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'hit_bool-request)))
  "Returns md5sum for a message object of type 'hit_bool-request"
  "0200bb62d2df4cba0774b881d9226b0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<hit_bool-request>)))
  "Returns full string definition for message of type '<hit_bool-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'hit_bool-request)))
  "Returns full string definition for message of type 'hit_bool-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <hit_bool-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <hit_bool-request>))
  "Converts a ROS message object to a list"
  (cl:list 'hit_bool-request
))
;//! \htmlinclude hit_bool-response.msg.html

(cl:defclass <hit_bool-response> (roslisp-msg-protocol:ros-message)
  ((hit_bool
    :reader hit_bool
    :initarg :hit_bool
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass hit_bool-response (<hit_bool-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <hit_bool-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'hit_bool-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtle_sim_rand-srv:<hit_bool-response> is deprecated: use turtle_sim_rand-srv:hit_bool-response instead.")))

(cl:ensure-generic-function 'hit_bool-val :lambda-list '(m))
(cl:defmethod hit_bool-val ((m <hit_bool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtle_sim_rand-srv:hit_bool-val is deprecated.  Use turtle_sim_rand-srv:hit_bool instead.")
  (hit_bool m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <hit_bool-response>) ostream)
  "Serializes a message object of type '<hit_bool-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hit_bool) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <hit_bool-response>) istream)
  "Deserializes a message object of type '<hit_bool-response>"
    (cl:setf (cl:slot-value msg 'hit_bool) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<hit_bool-response>)))
  "Returns string type for a service object of type '<hit_bool-response>"
  "turtle_sim_rand/hit_boolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hit_bool-response)))
  "Returns string type for a service object of type 'hit_bool-response"
  "turtle_sim_rand/hit_boolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<hit_bool-response>)))
  "Returns md5sum for a message object of type '<hit_bool-response>"
  "0200bb62d2df4cba0774b881d9226b0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'hit_bool-response)))
  "Returns md5sum for a message object of type 'hit_bool-response"
  "0200bb62d2df4cba0774b881d9226b0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<hit_bool-response>)))
  "Returns full string definition for message of type '<hit_bool-response>"
  (cl:format cl:nil "bool hit_bool~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'hit_bool-response)))
  "Returns full string definition for message of type 'hit_bool-response"
  (cl:format cl:nil "bool hit_bool~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <hit_bool-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <hit_bool-response>))
  "Converts a ROS message object to a list"
  (cl:list 'hit_bool-response
    (cl:cons ':hit_bool (hit_bool msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'hit_bool)))
  'hit_bool-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'hit_bool)))
  'hit_bool-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hit_bool)))
  "Returns string type for a service object of type '<hit_bool>"
  "turtle_sim_rand/hit_bool")