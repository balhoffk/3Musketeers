-- MLB SQL BATTING REFERENCE

CREATE TABLE fifteen_batting (
TEAM TEXT PRIMARY KEY,
BATTINGAVE DECIMAL(1,3),
ONBASE% DECIMAL,
STOLENBASES INT,
HOMERUNS INT
);

CREATE TABLE fifteen_defense (
TEAM TEXT PRIMARY KEY,
SAVES INT,
RUNS INT,
HOMERUNS INT,
);

CREATE TABLE team_id (
TEAM TEXT PRIMARY KEY,
)

CREATE TABLE attendance (
TEAM TEXT PRIMARY KEY)

-- JOINS TABLES 

SELECT fifteen_defense.TEAM, customer_name.first_name, customer_name.last_name, customer_location.address, customer_location.us_state
FROM fifteen_batting
JOIN team_id
ON fifteen_batting.TEAM = attendance.;