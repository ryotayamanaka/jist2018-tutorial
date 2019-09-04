OPTIONS (DIRECT=TRUE)
LOAD DATA
CHARACTERSET UTF8
INFILE 'input/routes.dat'
TRUNCATE INTO TABLE routes
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
(
  airline
, airline_id
, source_airport
, source_airport_id
, destination_airport
, destination_airport_id
, codeshare
, stops
, equipment
)
