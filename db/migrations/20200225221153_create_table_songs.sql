-- migrate:up

create table songs (
  id integer primary key autoincrement,
  title text not null,
  date_created text
);

-- migrate:down
drop table songs;

