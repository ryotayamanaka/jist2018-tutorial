#!/bin/bash
#
# Please run this under jist2018-tutorial/
#
# $ sh scripts/load.sh

sqlplus rdfuser/rdfuser@orclpdb1 @scripts/load/create_tables.sql
sqlldr rdfuser/rdfuser@orclpdb1 scripts/load/airlines.ctl log/airlines.log
sqlldr rdfuser/rdfuser@orclpdb1 scripts/load/airports.ctl log/airports.log
sqlldr rdfuser/rdfuser@orclpdb1 scripts/load/planes.ctl log/planes.log
sqlldr rdfuser/rdfuser@orclpdb1 scripts/load/routes.ctl log/routes.log
