-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.


CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    name TEXT
)

CREATE TABLE matches (
    id SERIAL PRIMARY KEY,
    winner INT,
    loser INT,
    FOREIGN KEY (winner, loser) REFERENCES players (id, id)
)

-- Extra credit
-- CREATE TABLE tournaments (
--     id SERIAL PRIMARY KEY,
--     name TEXT
-- )
