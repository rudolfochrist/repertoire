;;;; repertoire.lisp

(in-package #:repertoire-tests)

(deftest a-song-in-repertoire-adheres-crd
  (let ((id (rep:add-song "All of Me")))
    (ok (string= "All of Me" (rep:pick-song :id id)))
    (rep:delete-song id)
    (ok (null (rep:pick-song :id id)))))


(deftest it-is-impossible-to-add-duplicate-songs
  (rep:add-song "All of Me")
  (ok (signals (rep:add-song "All of Me")
          'rep:duplicate-song-error)))


(deftest punctuation-is-considered-on-duplicates
  (rep:add-song "All of Me")
  (ok (signals (rep:add-song "All of Me!")
          'rep:duplicate-song-error)))






