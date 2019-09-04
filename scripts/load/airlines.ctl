OPTIONS (DIRECT=TRUE)
LOAD DATA
CHARACTERSET UTF8
INFILE 'input/airlines.dat'
TRUNCATE INTO TABLE airlines
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
(
  airline_id
, name
, alias
, iata
, icao
, callsign
, country
, active
)
