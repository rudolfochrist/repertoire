;;;; repertoire.lisp

(in-package #:repertoire)

(defvar *db-path* (asdf:system-relative-pathname "repertoire" "db/repertoire_database_dev.sqlite3"))

(yesql:import song-operations
  :from "db/song-operations.sql"
  :as :cl-yesql/sqlite
  :binding :all-functions)

(defun add-song (title)
  (sqlite:with-open-database (db *db-path*)
    (insert-song db :title title)))


(defun pick-song (&key id title)
  (sqlite:with-open-database (db *db-path*)
    (get-song-by-id db :id id)))


(defun delete-song (id)
  (sqlite:with-open-database (db *db-path*)
    (delete-song-by-id? db id)))


(define-condition duplicate-song-error (error)
  ())
