OPTIONS (DIRECT=TRUE)
LOAD DATA
CHARACTERSET UTF8
INFILE 'input/airports.dat'
TRUNCATE INTO TABLE airports
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
(
  airport_id
, name
, city
, country
, iata
, icao
, latitude
, longitude
, altitude
, timezone
, dst
, timezone_db
, type
, source
)
