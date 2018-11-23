@?/md/admin/catsem.sql

CREATE BIGFILE TABLESPACE rdftbs
DATAFILE '/opt/oracle/oradata/ORCLCDB/ORCLPDB1/rdftbs01.dbf' SIZE 1G;

GRANT INHERIT PRIVILEGES ON USER sys TO mdsys;
EXECUTE SEM_APIS.CREATE_SEM_NETWORK('rdftbs');

CREATE USER rdfuser IDENTIFIED BY rdfuser
DEFAULT TABLESPACE rdftbs TEMPORARY TABLESPACE temp;
GRANT connect, resource, unlimited tablespace TO rdfuser;

EXIT
