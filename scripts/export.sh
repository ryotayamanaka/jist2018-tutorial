#!/bin/bash
#
# Please run this script under the repository home
# $ sh scripts/export.sh

sqlplus -s rdfuser/rdfuser@orclpdb1 @scripts/export/airports.sql > /dev/null
sqlplus -s rdfuser/rdfuser@orclpdb1 @scripts/export/has_flight_to.sql > /dev/null

cat data/airports.pg > data/openflights.pg
cat data/has_flight_to.pg >> data/openflights.pg

ls -lat data/
