/*
BEGIN
dbms_snapshot.REFRESH('c_rm_staff_information');
END;
*/

CREATE MATERIALIZED VIEW LOG ON h_rm_staff_information;

CREATE MATERIALIZED VIEW c_rm_staff_information refresh fast ON demand
AS
  SELECT USER_ID
  , IDEN_CODE
  , PIDM
  , BANNER_ID
  , STAFF_NAME
  , STAFF_EMAIL
  , CURRENT_TEAM
  , ACTIVITY_DATE
  , RECORD_START_DATE
  FROM h_rm_staff_information
  WHERE record_end_date IS NULL;

  CREATE INDEX C_RM_STAFF_INFO_USER_ID ON C_RM_STAFF_INFORMATION (USER_ID) ;
  CREATE INDEX C_RM_STAFF_INFO_IDEN_CODE ON C_RM_STAFF_INFORMATION (IDEN_CODE) ;
  CREATE INDEX C_RM_STAFF_INFO_PIDM ON C_RM_STAFF_INFORMATION (PIDM) ;
  CREATE INDEX C_RM_STAFF_INFO_BANNER_ID ON C_RM_STAFF_INFORMATION (BANNER_ID) ;
  CREATE INDEX C_RM_STAFF_INFO_NAME ON C_RM_STAFF_INFORMATION (STAFF_NAME) ;
  CREATE INDEX C_RM_STAFF_INFO_TEAM ON C_RM_STAFF_INFORMATION (CURRENT_TEAM) ;

