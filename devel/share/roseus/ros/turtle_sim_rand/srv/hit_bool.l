;; Auto-generated. Do not edit!


(when (boundp 'turtle_sim_rand::hit_bool)
  (if (not (find-package "TURTLE_SIM_RAND"))
    (make-package "TURTLE_SIM_RAND"))
  (shadow 'hit_bool (find-package "TURTLE_SIM_RAND")))
(unless (find-package "TURTLE_SIM_RAND::HIT_BOOL")
  (make-package "TURTLE_SIM_RAND::HIT_BOOL"))
(unless (find-package "TURTLE_SIM_RAND::HIT_BOOLREQUEST")
  (make-package "TURTLE_SIM_RAND::HIT_BOOLREQUEST"))
(unless (find-package "TURTLE_SIM_RAND::HIT_BOOLRESPONSE")
  (make-package "TURTLE_SIM_RAND::HIT_BOOLRESPONSE"))

(in-package "ROS")





(defclass turtle_sim_rand::hit_boolRequest
  :super ros::object
  :slots ())

(defmethod turtle_sim_rand::hit_boolRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass turtle_sim_rand::hit_boolResponse
  :super ros::object
  :slots (_hit_bool ))

(defmethod turtle_sim_rand::hit_boolResponse
  (:init
   (&key
    ((:hit_bool __hit_bool) nil)
    )
   (send-super :init)
   (setq _hit_bool __hit_bool)
   self)
  (:hit_bool
   (&optional __hit_bool)
   (if __hit_bool (setq _hit_bool __hit_bool)) _hit_bool)
  (:serialization-length
   ()
   (+
    ;; bool _hit_bool
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _hit_bool
       (if _hit_bool (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _hit_bool
     (setq _hit_bool (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass turtle_sim_rand::hit_bool
  :super ros::object
  :slots ())

(setf (get turtle_sim_rand::hit_bool :md5sum-) "0200bb62d2df4cba0774b881d9226b0e")
(setf (get turtle_sim_rand::hit_bool :datatype-) "turtle_sim_rand/hit_bool")
(setf (get turtle_sim_rand::hit_bool :request) turtle_sim_rand::hit_boolRequest)
(setf (get turtle_sim_rand::hit_bool :response) turtle_sim_rand::hit_boolResponse)

(defmethod turtle_sim_rand::hit_boolRequest
  (:response () (instance turtle_sim_rand::hit_boolResponse :init)))

(setf (get turtle_sim_rand::hit_boolRequest :md5sum-) "0200bb62d2df4cba0774b881d9226b0e")
(setf (get turtle_sim_rand::hit_boolRequest :datatype-) "turtle_sim_rand/hit_boolRequest")
(setf (get turtle_sim_rand::hit_boolRequest :definition-)
      "---
bool hit_bool
")

(setf (get turtle_sim_rand::hit_boolResponse :md5sum-) "0200bb62d2df4cba0774b881d9226b0e")
(setf (get turtle_sim_rand::hit_boolResponse :datatype-) "turtle_sim_rand/hit_boolResponse")
(setf (get turtle_sim_rand::hit_boolResponse :definition-)
      "---
bool hit_bool
")



(provide :turtle_sim_rand/hit_bool "0200bb62d2df4cba0774b881d9226b0e")


