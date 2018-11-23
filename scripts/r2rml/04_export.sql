SET TIMING ON

BEGIN 
sem_apis.export_rdfview_model(
  model_name      => 'ICGC_RDFVIEW',
  rdf_table_owner => 'ICGC_USER',
  rdf_table_name  => 'STAGING'
);
END;
/

EXIT
