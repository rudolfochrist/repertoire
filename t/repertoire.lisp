;;;; repertoire.lisp

(in-package #:repertoire-tests)
(in-suite :repertoire)

(test a-song-in-repertoire-adheres-crd
  (let ((id (rep:add-song "All of Me")))
    (is (string= "All of Me" (rep:pick-song :id id)))
    (rep:delete-song id)
    (is (null (rep:pick-song :id id)))))


(test it-is-impossible-to-add-duplicate-songs
  (rep:add-song "All of Me")
  (signals rep:duplicate-song-error (rep:add-song "All of Me")))


(test punctuation-is-considered-on-duplicates
  (rep:add-song "All of Me")
  (signals rep:duplicate-song-error (rep:add-song "All of Me!")))






