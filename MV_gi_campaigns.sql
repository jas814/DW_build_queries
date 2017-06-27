/*
BEGIN
  dbms_snapshot.REFRESH('C_GI_CAMPAIGNS');
END;
*/

CREATE MATERIALIZED VIEW LOG ON H_GI_CAMPAIGNS;
 
CREATE MATERIALIZED VIEW C_GI_CAMPAIGNS 
refresh fast ON demand
AS
  SELECT CAMPAIGN_CODE
  , CAMPAIGN_DESC
  , CMTP_CODE
  , CMTP_DESC
  , CAMP_EST_DATE
  , CAMP_END_DATE
  , GOAL_AMOUNT
  , OUTRIGHT_GIFT_SUM
  , MG_PMT_SUM
  , PLEDGE_PMT_SUM
  , COUNTABLE_PLEDGE_SUM
  , PLEDGE_PAID_SUM
  , PLEDGE_BALANCE_SUM
  , NOT_COUNTABLE_PLEDGE_SUM
  , TESTAMENTARY_COMMITMENT_SUM
  , CASH_CREDIT_SUM
  , COMMITMENT_CREDIT_SUM
  , DEFAULT_DESG_CODE
  , DEFAULT_DESG_DESC
  , ASSOC_IND
  , ACTIVITY_DATE
  , WEB_GIFT_IND
  , WEB_PLEDGE_IND
  , USER_ID
  , record_start_date
  FROM h_gi_campaigns
  WHERE record_end_date IS NULL;
  
  CREATE INDEX "PENTAHO"."C_GI_CAMPAIGNS_IDX" ON "PENTAHO"."C_GI_CAMPAIGNS" ("CAMPAIGN_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERSPACE" ;