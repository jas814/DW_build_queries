--BEGIN
--dbms_snapshot.REFRESH('C_CN_PICTURES');
--END;

CREATE MATERIALIZED VIEW LOG ON H_CN_PICTURES;

CREATE MATERIALIZED VIEW C_CN_PICTURES refresh FAST ON demand
AS
  SELECT PIDM
  , BANNER_ID
  , NAME_SORT
  , ENTITY_CODE
  , GENDER_CODE
  , PROFILE_IMAGE
  , FILE_PATH
  , RECORD_START_DATE
  FROM h_cn_pictures
  WHERE record_end_date IS NULL;

  CREATE INDEX c_cn_pictures_pidm ON c_cn_pictures (pidm);
  CREATE INDEX c_cn_pictures_banner_id ON c_cn_pictures (banner_id);
  CREATE INDEX c_cn_pictures_entity_code ON c_cn_pictures (entity_code);
  CREATE INDEX c_cn_pictures_gender_code ON c_cn_pictures (gender_code);

  


 