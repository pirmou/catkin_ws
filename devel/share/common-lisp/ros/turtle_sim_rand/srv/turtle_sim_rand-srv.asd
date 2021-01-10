
(cl:in-package :asdf)

(defsystem "turtle_sim_rand-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "hit_bool" :depends-on ("_package_hit_bool"))
    (:file "_package_hit_bool" :depends-on ("_package"))
  ))