--BEGIN
--dbms_snapshot.REFRESH('C_CN_EMAIL');
--END;

--CREATE MATERIALIZED VIEW LOG ON H_CN_EMAIL;

CREATE MATERIALIZED VIEW C_CN_EMAIL refresh FAST ON demand
AS
  SELECT PIDM
  , BANNER_ID
  , NAME_SORT
  , ENTITY_CODE
  , EMAIL_CODE
  , EMAIL_DESC
  , EMAIL_ADDRESS
  , EMAIL_COMMENT
  , ACTIVE_IND
  , PREFERRED_IND
  , STATUS_CODE
  , USER_ID
  , ACTIVITY_DATE
  , DISPLAY_WEB_IND
  , DATA_ORIGIN
  , GOREMAL_PREF_IND
  , PREF_RANK
  , RECORD_START_DATE
  FROM h_cn_email
  WHERE record_end_date IS NULL;

  CREATE INDEX c_cn_email_pidm ON c_cn_email (pidm);
  CREATE INDEX c_cn_email_id ON c_cn_email (banner_id);
  CREATE INDEX c_cn_email_name_sort ON c_cn_email (name_sort);
  CREATE INDEX c_cn_email_entity_code ON c_cn_email (entity_code);
  CREATE INDEX c_cn_email_code ON c_cn_email (email_code);
  CREATE INDEX c_cn_email_active_ind ON c_cn_email (active_ind);
  CREATE INDEX c_cn_email_preferred ON c_cn_email (preferred_ind);
  CREATE INDEX c_cn_email_status ON c_cn_email (status_code);
  


 