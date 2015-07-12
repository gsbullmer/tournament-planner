-- Table definitions for the tournament project.
-- 
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
-- 
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.


CREATE TABLE players (
    player_id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE matches (
    match_id SERIAL PRIMARY KEY,
    winner INT REFERENCES players (player_id),
    loser INT REFERENCES players (player_id)
);

-- Extra credit
-- CREATE TABLE tournaments (
--     id SERIAL PRIMARY KEY,
--     name TEXT
-- )
