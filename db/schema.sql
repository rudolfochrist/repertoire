CREATE TABLE schema_migrations (version varchar(255) primary key);
CREATE TABLE songs (
  id integer primary key autoincrement,
  title text not null,
  date_created text
);
CREATE TABLE sqlite_sequence(name,seq);
-- Dbmate schema migrations
INSERT INTO schema_migrations (version) VALUES
  ('20200225221153');
