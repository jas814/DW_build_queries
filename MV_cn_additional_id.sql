/*
BEGIN
dbms_snapshot.REFRESH('c_cn_additional_id');
END;
*/

--CREATE MATERIALIZED VIEW LOG ON h_cn_additional_id;

CREATE MATERIALIZED VIEW c_cn_additional_id refresh fast ON demand
AS
  SELECT PIDM
  , BANNER_ID
  , NAME_SORT
  , ENTITY_CODE
  , ADDITIONAL_ID
  , ADID_TYPE_CODE
  , ADID_TYPE_DESC
  , BANNER_USERID
  , ACTIVITY_DATE
  , DATA_ORIGIN
  , RECORD_START_DATE
  FROM h_cn_additional_id
  WHERE record_end_date IS NULL;

  CREATE INDEX C_CN_ADIDID_PIDM ON C_CN_ADDITIONAL_ID (PIDM) ;
  CREATE INDEX C_CN_ADIDID_BANNER_ID ON C_CN_ADDITIONAL_ID (BANNER_ID) ;
  CREATE INDEX C_CN_ADIDID_NAME_SORT ON C_CN_ADDITIONAL_ID (NAME_SORT) ;
  CREATE INDEX C_CN_ADIDID_ENTITY_CODE ON C_CN_ADDITIONAL_ID (ENTITY_CODE) ;
  CREATE INDEX C_CN_ADIDID_TYPE ON C_CN_ADDITIONAL_ID (ADID_TYPE_CODE) ;
  CREATE INDEX C_CN_ADIDID_ADID ON C_CN_ADDITIONAL_ID (ADDITIONAL_ID) ;


