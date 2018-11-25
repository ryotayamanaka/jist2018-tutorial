SET TIMING ON

BEGIN 
sem_apis.export_rdfview_model(
  model_name      => 'RDFVIEW',
  rdf_table_owner => 'RDFUSER',
  rdf_table_name  => 'STAGING'
);
END;
/

EXIT
