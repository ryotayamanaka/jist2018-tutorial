BEGIN
  SEM_APIS.DROP_RDFVIEW_MODEL(
    model_name => 'RDFVIEW'
  );
END;
/

BEGIN
  SEM_APIS.create_rdfview_model(
    model_name => 'RDFVIEW',
    tables => null,
    r2rml_table_owner => 'RDFUSER',
    r2rml_table_name => 'R2RML'
  );
END;
/

--SELECT * FROM mdsys.sem_model$ WHERE model_type='D' ;

EXIT
