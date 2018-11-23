SET ECHO ON
SET LINESIZE 200

-- Donor.sex

SELECT o
FROM TABLE(SEM_MATCH(
   'PREFIX icgc: <http://icgc.link/>
    SELECT DISTINCT ?o WHERE {?s icgc:sex ?o}'
  , SEM_MODELS('ICGC_RDFVIEW')
  , null, null, null)
);

-- Donor.vital_status

SELECT o
FROM TABLE(SEM_MATCH(
   'PREFIX icgc: <http://icgc.link/>
    SELECT DISTINCT ?o WHERE {?s icgc:vital_status ?o}'
  , SEM_MODELS('ICGC_RDFVIEW')
  , null, null, null)
);

-- Donor.diagnosis_icd10

SELECT o
FROM TABLE(SEM_MATCH(
   'PREFIX icgc: <http://icgc.link/>
    SELECT DISTINCT ?o WHERE {?s icgc:diagnosis_icd10 ?o}'
  , SEM_MODELS('ICGC_RDFVIEW')
  , null, null, null)
);

-- Detection

SELECT s
FROM TABLE(SEM_MATCH(
   'SELECT ?s WHERE {?s rdf:type <http://icgc.link/Detection>} LIMIT 10'
  , SEM_MODELS('ICGC_RDFVIEW')
  , null, null, null)
);

-- Mutation.faldo:location

COL s FOR a50
COL o FOR a50
SELECT s, o
FROM TABLE(SEM_MATCH(
 'PREFIX faldo: <http://biohackathon.org/resource/faldo>
  SELECT * WHERE {?s faldo:location ?o} LIMIT 10'
, SEM_MODELS('ICGC_RDFVIEW')
, null, null, null)
);

-- Mutation.faldo:begin/end

COL s FOR a30
COL br FOR a50
COL bp FOR a10
COL er FOR a50
COL ep FOR a10
SELECT s, br, bp, er, ep
FROM TABLE(SEM_MATCH(
 'PREFIX faldo: <http://biohackathon.org/resource/faldo>
  SELECT * WHERE {
    ?s faldo:begin ?b . ?b faldo:reference ?br . ?b faldo:position ?bp
  . ?s faldo:end ?e   . ?e faldo:reference ?er . ?e faldo:position ?ep
  } LIMIT 10'
, SEM_MODELS('ICGC_RDFVIEW')
, null, null, null)
);

-- Mutation.med2rdf:*_allele

COL s FOR a40
COL ra FOR a5
COL mfa FOR a5
COL mta FOR a5
SELECT s, ra, mfa, mta
FROM TABLE(SEM_MATCH(
 'PREFIX med2rdf: <http://med2rdf.org/ontology/med2rdf#>
  SELECT * WHERE {
    ?s med2rdf:reference_allele ?ra
  . ?s med2rdf:mutated_from_allele ?mfa
  . ?s med2rdf:mutated_to_allele ?mta
  FILTER( ?ra = ?mfa)
  } LIMIT 10'
, SEM_MODELS('ICGC_RDFVIEW')
, null, null, null)
);

-- Effect.icgc:gene_affected

COL s FOR a60
COL o FOR a60
SELECT s, o
FROM TABLE(SEM_MATCH(
 'PREFIX icgc: <http://icgc.link/>
  SELECT * WHERE { ?s icgc:gene_affected ?o } LIMIT 10'
, SEM_MODELS('ICGC_RDFVIEW')
, null, null, null)
);

EXIT
