;;;; repertoire.asd

(defsystem "repertoire"
  :author "Sebastian Christ, Verena Lambrecht"
  :maintainer "Sebastian Christ, Verena Lambrecht"
  :licence "MIT"
  :version "0.1"
  :depends-on ("local-time"
               "cl-yesql"
               "cl-yesql/sqlite")
  :components ((:module "src"
                :serial t
                :components ((:file "package")
                             (:file "repertoire"))))
  :description "repertoire learning tool"
  :in-order-to ((test-op (test-op repertoire/test))))


(defsystem "repertoire/test"
  :depends-on ("uiop"
               "fiveam"
               "repertoire")
  :components ((:module "t"
                :serial t
                :components ((:file "package")
                             (:file "repertoire"))))
  :perform (test-op (o c)
                    (uiop:symbol-call :5am :run! :repertoire)))
