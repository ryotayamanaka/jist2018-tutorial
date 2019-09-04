SPOOL data/has_flight_to.pg
SET PAGESIZE 0
SET LINESIZE 32767
SET FEEDBACK OFF
SET TRIMSPOOL ON

SELECT
  r.source_airport_id
  || ' -> '
  || r.destination_airport_id
  || ' :has_flight_to '
  || NVL2(a.name, 'airline:"' || a.name || '" ', '')
  || NVL2(a.country, 'country:"' || a.country || '" ', '')
  || NVL2(p.name, 'plane:"' || p.name || '" ', '')
FROM
  routes r
  LEFT OUTER JOIN airlines a ON r.airline_id = a.airline_id
  LEFT OUTER JOIN planes p ON SUBSTR(r.equipment, 1, 3) = p.iata
WHERE
    r.source_airport_id IS NOT NULL
AND r.destination_airport_id IS NOT NULL
;

SPOOL OFF
EXIT
