-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- test for github

DROP DATABASE IF EXISTS tournamentdb;

CREATE DATABASE tournamentdb;

\connect tournamentdb;

CREATE TABLE players(
	ID SERIAL primary key,
	name TEXT);

CREATE TABLE matches(
	matchID SERIAL,
	winner INTEGER REFERENCES players (ID),	
	loser INTEGER REFERENCES players (ID));