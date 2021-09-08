-- from the terminal run:
-- psql < air_traffic.sql

\c air_traffic

CREATE TABLE tickets
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  seat TEXT NOT NULL,
  departure TIMESTAMP NOT NULL,
  arrival TIMESTAMP NOT NULL,
  airline TEXT NOT NULL,
  from_city TEXT NOT NULL,
  from_country TEXT NOT NULL,
  to_city TEXT NOT NULL,
  to_country TEXT NOT NULL
);

ALTER TABLE tickets 
  DROP COLUMN departure,
  DROP COLUMN arrival,
  DROP COLUMN airline,
  DROP COLUMN from_city,
  DROP COLUMN from_country,
  DROP COLUMN to_city,
  DROP COLUMN to_country;

CREATE TABLE flights
( 
  id SERIAL PRIMARY KEY,
  departure TIMESTAMP NOT NULL,
  arrival TIMESTAMP NOT NULL,
  airline TEXT NOT NULL,
  from_city TEXT NOT NULL,
  from_country TEXT NOT NULL,
  to_city TEXT NOT NULL,
  to_country TEXT NOT NULL

);

ALTER TABLE tickets ADD COLUMN flight_id INTEGER REFERENCES flights ON DELETE SET NULL;