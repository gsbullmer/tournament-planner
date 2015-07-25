-- Table definitions for the tournament project.
-- 
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
-- 
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Tables

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


-- Veiws

CREATE VIEW player_standings AS
    SELECT player_id, name,
        COUNT(CASE WHEN player_id = winner THEN 1 END) AS wins,
        COUNT(winner + loser) AS matches
    FROM players LEFT JOIN matches
    ON player_id = winner OR player_id = loser
    GROUP BY player_id;
