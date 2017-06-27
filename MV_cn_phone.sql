--BEGIN
  --dbms_snapshot.REFRESH('C_CN_PHONE');
--END;

--CREATE MATERIALIZED VIEW LOG ON H_CN_PHONE;

CREATE MATERIALIZED VIEW C_CN_PHONE refresh FAST ON demand
AS
  SELECT PIDM
  , BANNER_ID
  , NAME_SORT
  , ENTITY_CODE
  , TELE_CODE
  , TELE_DESC
  , TELE_SEQ_NO
  , PHONE_NUMBER_FULL
  , PHONE_AREA_CODE
  , PHONE_NUMBER
  , PHONE_EXT
  , PHONE_INTL
  , COUNTRY_CODE
  , PREFERRED_IND
  , ACTIVE_IND
  , PRIMARY_IND
  , UNLISTED_IND
  , STATUS_IND
  , ATYP_CODE
  , ATYP_DESC
  , ATYP_SEQ_NO
  , PHONE_COMMENT
  , ACTIVITY_DATE
  , DATA_ORIGIN
  , USER_ID
  , PREF_RANK
  , PHONE_INTL_IND
  , RECORD_START_DATE
  FROM h_cn_phone
  WHERE record_end_date IS NULL; 
  
CREATE INDEX c_cn_phone_pidm ON c_cn_phone (pidm);
CREATE INDEX c_cn_phone_id ON c_cn_phone (banner_id);
CREATE INDEX c_cn_phone_name_sort ON c_cn_phone (name_sort);
CREATE INDEX c_cn_phone_entity_code ON c_cn_phone (entity_code);
CREATE INDEX c_cn_phone_code ON c_cn_phone (tele_code);
CREATE INDEX c_cn_phone_tele_seq_no ON c_cn_phone (tele_seq_no);
CREATE INDEX c_cn_phone_active_ind ON c_cn_phone (active_ind);
CREATE INDEX c_cn_phone_preferred ON c_cn_phone (preferred_ind);
CREATE INDEX c_cn_phone_status ON c_cn_phone (status_ind);
CREATE INDEX c_cn_phone_primary_ind ON c_cn_phone (primary_ind);
CREATE INDEX c_cn_phone_atyp_code ON c_cn_phone (atyp_code);





