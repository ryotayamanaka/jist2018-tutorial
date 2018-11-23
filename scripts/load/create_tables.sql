DROP TABLE airports;
CREATE TABLE airports (
  airport_id  NUMBER
, name        VARCHAR2(255)
, city        VARCHAR2(255)
, country     VARCHAR2(255)
, iata        VARCHAR2(10)
, icao        VARCHAR2(10)
, latitude    NUMBER
, longitude   NUMBER
, altitude    NUMBER
, timezone    NUMBER
, dst         VARCHAR2(255)
, timezone_db VARCHAR2(255)
, type        VARCHAR2(255)
, source      VARCHAR2(255)
);

DROP TABLE airlines;
CREATE TABLE airlines (
  airline_id  NUMBER
, name        VARCHAR2(255)
, alias       VARCHAR2(255)
, iata        VARCHAR2(10)
, icao        VARCHAR2(10)
, callsign    VARCHAR2(255)
, country     VARCHAR2(255)
, active      VARCHAR2(1) 
);

DROP TABLE routes;
CREATE TABLE routes (
  airline                VARCHAR2(10)
, airline_id             NUMBER
, source_airport         VARCHAR2(10)
, source_airport_id      NUMBER
, destination_airport    VARCHAR2(10)
, destination_airport_id NUMBER
, codeshare              VARCHAR2(1)
, stops                  NUMBER
, equipment              VARCHAR2(255)
);

DROP TABLE planes;
CREATE TABLE planes (
  name VARCHAR2(255)
, iata VARCHAR2(10)
, icao VARCHAR2(10)
);

