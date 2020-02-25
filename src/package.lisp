;;;; package.lisp

(defpackage #:repertoire
  (:nicknames #:rep)
  (:use :cl)
  (:export
   #:add-song
   #:pick-song
   #:delete-song
   #:duplicate-song-error))
