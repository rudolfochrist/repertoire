;;;; repertoire.asd

(defsystem "repertoire"
  :author ("Verena Lambrecht <verena.lambrecht@gmail.com>"
           "Sebastian Christ <rudolfo.christ@gmail.com>")
  :maintainer ("Verena Lambrecht <verena.lambrecht@gmail.com>"
               "Sebastian Christ <rudolfo.christ@gmail.com>")
  :licence "AGPL"
  :version "0.1"
  :homepage "https://github.com/rudolfochrist/repertoire"
  :bug-tracker "https://github.com/rudolfochrist/repertoire/issues"
  :source-control (:git "github.com:rudolfochrist/repertoire.git")
  :depends-on ("local-time"
               "cl-yesql"
               "cl-yesql/sqlite")
  :components ((:module "src"
                :serial t
                :components ((:file "package")
                             (:file "repertoire"))))
  :description "A repertoire learning tool."
  :in-order-to ((test-op (test-op repertoire/test))))


(defsystem "repertoire/test"
  :depends-on ("uiop"
               "rove"
               "repertoire")
  :components ((:module "t"
                :serial t
                :components ((:file "package")
                             (:file "repertoire"))))
  :perform (test-op (o c)
                    (uiop:symbol-call :rove :run c)))
