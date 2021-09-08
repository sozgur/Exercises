-- from the terminal run:
-- psql < music.sql

\c music

ALTER TABLE songs DROP COLUMN artists;
ALTER TABLE songs DROP COLUMN album;
ALTER TABLE songs DROP COLUMN producers;


CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  name VARCHAR(20) NOT NULL
);

CREATE TABLE producers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(20) NOT NULL
);

CREATE TABLE entities (
  artist_id INT REFERENCES artists ON DELETE SET NULL,
  song_id INT REFERENCES songs ON DELETE SET NULL,
  producer_id INT REFERENCES producers ON DELETE SET NULL
);


CREATE TABLE albums (
  id SERIAL PRIMARY KEY,
  name VARCHAR(20) NOT NULL
);

ALTER TABLE songs ADD COLUMN album_id INT REFERENCES albums ON DELETE CASCADE;
