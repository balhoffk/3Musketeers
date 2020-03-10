CREATE TABLE fifteen_batting (
TEAM TEXT PRIMARY KEY,
BATTINGAVG DECIMAL,
ONBASEPERCENT DECIMAL,
STOLENBASES INT,
HOMERUNS INT
);

CREATE TABLE teamkeys (
BBREFTEAM TEXT PRIMARY KEY,
ROSTERPROPERVALUE TEXT
);

CREATE TABLE attendance (
tm TEXT PRIMARY KEY,
attendance INT,
Year INT
);


--Alter columns in SQL--
ALTER TABLE teamkeys RENAME COLUMN bbrefteam to team;
ALTER TABLE teamkeys RENAME COLUMN rosterpropervalue to tm;

SELECT fifteen_batting.team,
    teamkeys.team,
    teamkeys.tm,
    attendance.tm,
    fifteen_batting.BATTINGAVG,
    fifteen_batting.ONBASEPERCENT,
    fifteen_batting.STOLENBASES,
    fifteen_batting.HOMERUNS,
    attendance.attendance,
    attendance.Year
FROM teamkeys
    INNER JOIN fifteen_batting
        ON (teamkeys.team = fifteen_batting.team)
    INNER JOIN attendance
        ON (teamkeys.tm = attendance.tm)
    ORDERBY teamkeys.team;
