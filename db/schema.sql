DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;

CREATE TABLE pokemons(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  cp TEXT,
  poke_type TEXT,
  img_url TEXT,
  trainer_id INT
);

CREATE TABLE trainers(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  level TEXT,
  battles_won TEXT,
  img_url TEXT
);
