-- from the terminal run:
-- psql < outer_space.sql
\c outer_space

ALTER TABLE planets DROP COLUMN orbital_period_in_years;
ALTER TABLE planets DROP COLUMN orbits_around;
ALTER TABLE planets DROP COLUMN moons;
ALTER TABLE planets DROP COLUMN galaxy;


CREATE TABLE orbits (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE orbits_around (
  id SERIAL PRIMARY KEY,
  orbital_period_in_years FLOAT NOT NULL,
  planet_id INTEGER REFERENCES planets ON DELETE CASCADE,
  orbit_id INTEGER REFERENCES orbits ON DELETE CASCADE
);

CREATE TABLE galaxies
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

ALTER TABLE planets ADD COLUMN galaxy_id INT REFERENCES galaxies ON DELETE CASCADE;

CREATE TABLE moons (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE planet_moon (
  planet_id INTEGER REFERENCES planets ON DELETE CASCADE,
  moon_id INTEGER REFERENCES moons ON DELETE CASCADE
)

