sqlplus rdfuser/rdfuser@orclpdb1 @/opt/jist2018-tutorial/scripts/r2rml/01_staging.sql
sqlldr  rdfuser/rdfuser@orclpdb1 /opt/jist2018-tutorial/scripts/r2rml/02_stating.ctl
sqlplus rdfuser/rdfuser@orclpdb1 @/opt/jist2018-tutorial/scripts/r2rml/03_rdfview.sql
#sqlplus icgc_user/oracle @04_export.sql
#sqlplus icgc_user/oracle @05_spool.sql > /dev/null
