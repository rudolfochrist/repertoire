
-- name: insert-song @last-id
-- Adds a mew song.
insert into songs (
  title,
  date_created
)
values (
  :title,
  datetime('now')
);

-- name: get-song-by-id @single
-- Fetch a song by id.
select title
from songs
where id = :id;

-- name: delete-song-by-id?
-- Deletes a song.
delete from songs
where id = ?
