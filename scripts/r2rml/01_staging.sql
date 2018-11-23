DROP TABLE r2rml;
CREATE TABLE r2rml (
  RDF$STC_sub   varchar2(4000) not null
, RDF$STC_pred  varchar2(4000) not null
, RDF$STC_obj   varchar2(4000) not null
, RDF$STC_graph varchar2(4000)
);

grant select on r2rml to MDSYS;

EXIT
