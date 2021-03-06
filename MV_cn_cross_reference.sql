--BEGIN
  --dbms_snapshot.REFRESH('C_CN_CROSS_REFERENCE');
--END;

CREATE MATERIALIZED VIEW LOG ON H_CN_CROSS_REFERENCE;

CREATE MATERIALIZED VIEW C_CN_CROSS_REFERENCE refresh FAST ON demand
AS
  SELECT PIDM
  , BANNER_ID
  , NAME_SORT
  , ENTITY_CODE
  , XREF_CODE
  , XREF_DESC
  , XREF_PIDM
  , XREF_BANNER_ID
  , XREF_ENTITY_CODE
  , XREF_NAME_SORT
  , XREF_CLASS_YEAR_PREF
  , XREF_DONOR_CODE_PRIMARY
  , XREF_DEAD_IND
  , REVERSE_XREF_CODE
  , REVERSE_XREF_DESC
  , XREF_SPOUSE_IND
  , XREF_EMPLOYER_IND
  , XREF_HOUSEHOLD_IND
  , XREF_STATEMENT
  , XREF_REVERSE_STATEMENT
  , ACTIVITY_DATE
  , USER_ID
  , DATA_ORIGIN
  , RECORD_START_DATE
  FROM h_cn_cross_reference
  WHERE record_end_date IS NULL; 
  
  CREATE INDEX C_CN_CROSS_REFERENCE_PIDM ON C_CN_CROSS_REFERENCE (PIDM) ;
  CREATE INDEX C_CN_CROSS_REFERENCE_BANNER_ID ON C_CN_CROSS_REFERENCE (BANNER_ID) ;
  CREATE INDEX C_CN_CROSS_REFERENCE_NAME ON C_CN_CROSS_REFERENCE (NAME_SORT) ;
  CREATE INDEX C_CN_CROSS_REFERENCE_ENTITY ON C_CN_CROSS_REFERENCE (ENTITY_CODE) ;
  CREATE INDEX C_CN_CROSS_REFERENCE_XREF_PIDM ON C_CN_CROSS_REFERENCE (XREF_PIDM) ;
  CREATE INDEX C_CN_CROSS_REFERENCE_XREF_ID ON C_CN_CROSS_REFERENCE (XREF_BANNER_ID) ;
  CREATE INDEX C_CN_CROSS_REFERENCE_XREF_NAME ON C_CN_CROSS_REFERENCE (XREF_NAME_SORT) ;
  CREATE INDEX C_CN_CROSS_REFERENCE_XREF_ENT ON C_CN_CROSS_REFERENCE (XREF_ENTITY_CODE) ;
  CREATE INDEX C_CN_CROSS_REFERENCE_CODE ON C_CN_CROSS_REFERENCE (XREF_CODE) ;
  CREATE INDEX C_CN_CROSS_REFERENCE_REV_CODE ON C_CN_CROSS_REFERENCE (REVERSE_XREF_CODE) ;
