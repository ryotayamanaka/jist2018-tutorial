SPOOL data/airports.pg
SET PAGESIZE 0
SET LINESIZE 32767
SET FEEDBACK OFF
SET TRIMSPOOL ON

SELECT
  airport_id
  || ' :airport '
  || NVL2(name, 'name:"' || name || '" ', '')
  || NVL2(iata, 'iata:"' || iata || '" ', '')
  || NVL2(city, 'city:"' || city || '" ', '')
  || NVL2(latitude, 'latitude:' || latitude || ' ', '')
  || NVL2(longitude, 'longitude:' || longitude || ' ', '')
FROM
  airports
WHERE
  airport_id IS NOT NULL
;

SPOOL OFF
EXIT
