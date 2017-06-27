/*BEGIN
  dbms_snapshot.REFRESH('C_GI_CREDIT_SUMMARY');
END;
*/

CREATE MATERIALIZED VIEW LOG ON H_GI_CREDIT_SUMMARY;

CREATE MATERIALIZED VIEW C_GI_CREDIT_SUMMARY refresh fast ON demand
AS SELECT  PIDM
  ,  BANNER_ID
  ,  ENTITY_CODE
  ,  NAME_SORT
  ,  REPORTING_YEAR
  ,  FY_RECORD_COUNT
  ,  FY_DATE_COUNT
  ,  FY_GIFT_NUM_COUNT
  ,  FY_PLDG_NUM_COUNT
  ,  FY_OUTR_GIFT_AMT
  ,  FY_MG_PMT_AMT
  ,  FY_PLDG_PMT_AMT
  ,  FY_CNTB_PLDG_AMT
  ,  FY_PLDG_PAID_TOTAL_AMT
  ,  FY_PLDG_BAL_AMT
  ,  FY_NOTCB_PLDG_AMT
  ,  FY_NOTCB_PLDG_BAL_AMT
  ,  FY_MEMO_OUTR_GIFT_AMT
  ,  FY_MEMO_MG_PMT_AMT
  ,  FY_MEMO_PLDG_PMT_AMT
  ,  FY_MEMO_CNTB_PLDG_AMT
  ,  FY_MEMO_PLDG_PAID_TTL_AMT
  ,  FY_MEMO_PLDG_BAL_AMT
  ,  FY_MEMO_NOTCB_PLDG_AMT
  ,  FY_MEMO_NOTCB_PLDG_BAL_AMT
  ,  FY_3RD_PARTY_PMT_AMT
  ,  FY_TESTM_COMMIT_CREDIT_AMT
  ,  FY_CASH_CREDIT_PERS_AMT
  ,  FY_CASH_CREDIT_TRANS_AMT
  ,  FY_COMMIT_CREDIT_PERS_AMT
  ,  FY_COMMIT_CREDIT_TRANS_AMT
  ,  FY_MG_TOTAL_COUNT
  ,  FY_MG_TOTAL_AMT
  ,  FY_GIFTS_MATCHED_COUNT
  ,  FY_TRANS_AMT
  ,  FY_TRANS_PLDG_BAL_AMT
  ,  FY_TRANS_PLDG_TOTAL_AMT
  ,  FY_OUTR_GIFT_COUNT
  ,  FY_MG_PMT_COUNT
  ,  FY_PLDG_PMT_COUNT
  ,  FY_CNTB_PLDG_COUNT
  ,  FY_NOTCB_PLDG_COUNT
  ,  FY_MEMO_OUTR_GIFT_COUNT
  ,  FY_MEMO_MG_PMT_COUNT
  ,  FY_MEMO_PLDG_PMT_COUNT
  ,  FY_MEMO_CNTB_PLDG_COUNT
  ,  FY_MEMO_NOTCB_PLDG_COUNT
  ,  FY_3RD_PARTY_PMT_COUNT
  ,  FY_OUTR_GIFT_DCNT
  ,  FY_MG_PMT_DCNT
  ,  FY_PLDG_PMT_DCNT
  ,  FY_CNTB_PLDG_DCNT
  ,  FY_NOTCB_PLDG_DCNT
  ,  FY_MEMO_OUTR_GIFT_DCNT
  ,  FY_MEMO_MG_PMT_DCNT
  ,  FY_MEMO_PLDG_PMT_DCNT
  ,  FY_MEMO_CNTB_PLDG_DCNT
  ,  FY_MEMO_NOTCB_PLDG_DCNT
  ,  FY_3RD_PARTY_PMT_DCNT
  ,  FY_PLDG_PAID_TOTAL_COUNT
  ,  FY_PLDG_BAL_COUNT
  ,  FY_MEMO_PLDG_PAID_TTL_COUNT
  ,  FY_MEMO_PLDG_BAL_COUNT
  ,  FY_MEMO_NOTCB_PLDG_BAL_COUNT
  ,  FY_TRANS_PLDG_TOTAL_COUNT
  ,  FY_TRANS_PLDG_BAL_COUNT
  ,  FY_TRANS_COUNT
  ,  FY_TESTM_COMMIT_CREDIT_COUNT
  ,  FY_COMMIT_CREDIT_TRANS_COUNT
  ,  FY_COMMIT_CREDIT_PERS_COUNT
  ,  FY_CASH_CREDIT_TRANS_COUNT
  ,  FY_CASH_CREDIT_PERS_COUNT
  ,  LT_RECORD_COUNT
  ,  LT_DATE_COUNT
  ,  LT_GIFT_NUM_COUNT
  ,  LT_PLDG_NUM_COUNT
  ,  LT_OUTR_GIFT_AMT
  ,  LT_MG_PMT_AMT
  ,  LT_PLDG_PMT_AMT
  ,  LT_CNTB_PLDG_AMT
  ,  LT_PLDG_PAID_TOTAL_AMT
  ,  LT_PLDG_BAL_AMT
  ,  LT_NOTCB_PLDG_AMT
  ,  LT_NOTCB_PLDG_BAL_AMT
  ,  LT_MEMO_OUTR_GIFT_AMT
  ,  LT_MEMO_MG_PMT_AMT
  ,  LT_MEMO_PLDG_PMT_AMT
  ,  LT_MEMO_CNTB_PLDG_AMT
  ,  LT_MEMO_PLDG_PAID_TTL_AMT
  ,  LT_MEMO_PLDG_BAL_AMT
  ,  LT_MEMO_NOTCB_PLDG_AMT
  ,  LT_MEMO_NOTCB_PLDG_BAL_AMT
  ,  LT_3RD_PARTY_PMT_AMT
  ,  LT_TESTM_COMMIT_CREDIT_AMT
  ,  LT_CASH_CREDIT_PERS_AMT
  ,  LT_CASH_CREDIT_TRANS_AMT
  ,  LT_COMMIT_CREDIT_PERS_AMT
  ,  LT_COMMIT_CREDIT_TRANS_AMT
  ,  LT_MG_TOTAL_AMT
  ,  LT_MG_TOTAL_COUNT
  ,  LT_GIFTS_MATCHED_COUNT
  ,  LT_TRANS_AMT
  ,  LT_TRANS_PLDG_BAL_AMT
  ,  LT_TRANS_PLDG_TOTAL_AMT
  ,  LT_OUTR_GIFT_COUNT
  ,  LT_MG_PMT_COUNT
  ,  LT_PLDG_PMT_COUNT
  ,  LT_CNTB_PLDG_COUNT
  ,  LT_NOTCB_PLDG_COUNT
  ,  LT_MEMO_OUTR_GIFT_COUNT
  ,  LT_MEMO_MG_PMT_COUNT
  ,  LT_MEMO_PLDG_PMT_COUNT
  ,  LT_MEMO_CNTB_PLDG_COUNT
  ,  LT_MEMO_NOTCB_PLDG_COUNT
  ,  LT_3RD_PARTY_PMT_COUNT
  ,  LT_OUTR_GIFT_DCNT
  ,  LT_MG_PMT_DCNT
  ,  LT_PLDG_PMT_DCNT
  ,  LT_CNTB_PLDG_DCNT
  ,  LT_NOTCB_PLDG_DCNT
  ,  LT_MEMO_OUTR_GIFT_DCNT
  ,  LT_MEMO_MG_PMT_DCNT
  ,  LT_MEMO_PLDG_PMT_DCNT
  ,  LT_MEMO_CNTB_PLDG_DCNT
  ,  LT_MEMO_NOTCB_PLDG_DCNT
  ,  LT_3RD_PARTY_PMT_DCNT
  ,  LT_PLDG_PAID_TOTAL_COUNT
  ,  LT_PLDG_BAL_COUNT
  ,  LT_MEMO_PLDG_PAID_TTL_COUNT
  ,  LT_MEMO_PLDG_BAL_COUNT
  ,  LT_MEMO_NOTCB_PLDG_BAL_COUNT
  ,  LT_TRANS_PLDG_TOTAL_COUNT
  ,  LT_TRANS_PLDG_BAL_COUNT
  ,  LT_TRANS_COUNT
  ,  LT_TESTM_COMMIT_CREDIT_COUNT
  ,  LT_COMMIT_CREDIT_TRANS_COUNT
  ,  LT_COMMIT_CREDIT_PERS_COUNT
  ,  LT_CASH_CREDIT_TRANS_COUNT
  ,  LT_CASH_CREDIT_PERS_COUNT
  ,  FY_CASH_CREDIT_PERS_DCNT
  ,  FY_CASH_CREDIT_TRANS_DCNT
  ,  FY_COMMIT_CREDIT_PERS_DCNT
  ,  FY_COMMIT_CREDIT_TRANS_DCNT
  ,  FY_MEMO_NOTCB_PLDG_BAL_DCNT
  ,  FY_MEMO_PLDG_BAL_DCNT
  ,  FY_MEMO_PLDG_PAID_TTL_DCNT
  ,  FY_GIFTS_MATCHED_DCNT
  ,  FY_NOTCB_PLDG_BAL_COUNT
  ,  FY_NOTCB_PLDG_BAL_DCNT
  ,  FY_PLDG_BAL_DCNT
  ,  FY_PLDG_PAID_TOTAL_DCNT
  ,  FY_TESTM_COMMIT_CREDIT_DCNT
  ,  FY_TRANS_DCNT
  ,  FY_TRANS_PLDG_BAL_DCNT
  ,  FY_TRANS_PLDG_TOTAL_DCNT
  ,  LT_CASH_CREDIT_PERS_DCNT
  ,  LT_CASH_CREDIT_TRANS_DCNT
  ,  LT_COMMIT_CREDIT_PERS_DCNT
  ,  LT_COMMIT_CREDIT_TRANS_DCNT
  ,  LT_MEMO_NOTCB_PLDG_BAL_DCNT
  ,  LT_MEMO_PLDG_BAL_DCNT
  ,  LT_MEMO_PLDG_PAID_TTL_DCNT
  ,  LT_GIFTS_MATCHED_DCNT
  ,  LT_NOTCB_PLDG_BAL_COUNT
  ,  LT_NOTCB_PLDG_BAL_DCNT
  ,  LT_PLDG_BAL_DCNT
  ,  LT_PLDG_PAID_TOTAL_DCNT
  ,  LT_TESTM_COMMIT_CREDIT_DCNT
  ,  LT_TRANS_DCNT
  ,  LT_TRANS_PLDG_BAL_DCNT
  ,  LT_TRANS_PLDG_TOTAL_DCNT
  , RECORD_START_DATE
  FROM h_gi_credit_summary
  WHERE record_end_date IS NULL;
  
  CREATE INDEX C_GI_CREDIT_SUMMARY_PIDM ON C_GI_CREDIT_SUMMARY (PIDM) ;
  CREATE INDEX C_GI_CREDIT_SUMMARY_BANNER_ID ON C_GI_CREDIT_SUMMARY (BANNER_ID) ;
  CREATE INDEX C_GI_CREDIT_SUMMARY_NAME_SORT ON C_GI_CREDIT_SUMMARY (NAME_SORT) ;
  CREATE INDEX C_GI_CREDIT_SUMMARY_ENTITY ON C_GI_CREDIT_SUMMARY (ENTITY_CODE) ;
  CREATE INDEX C_GI_CREDIT_SUMMARY_YEAR ON C_GI_CREDIT_SUMMARY (REPORTING_YEAR) ;


COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."PIDM" IS 'from CN_CONSTITUENT.PIDM';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."BANNER_ID" IS 'from CN_CONSTITUENT.BANNER_ID';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."ENTITY_CODE" IS 'from CN_CONSTITUENT.NAME_SORT';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."NAME_SORT" IS 'from CN_CONSTITUENT.ENTITY_CODE';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."RECORD_START_DATE" IS 'Date record was created/changed in Banner';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."REPORTING_YEAR" IS 'Fiscal Year (FY) of reporting row';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_RECORD_COUNT" IS 'Count of transaction records each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_DATE_COUNT" IS 'Count of unique transaction dates each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_GIFT_NUM_COUNT" IS 'Count of unique gift numbers (not including 0000000) each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_PLDG_NUM_COUNT" IS 'Count of unique pledge numbers (not including 0000000) each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_OUTR_GIFT_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.OUTRIGHT_GIFT_AMOUNT each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MG_PMT_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MG_PMT each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_PLDG_PMT_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.PLEDGE_PMT each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_CNTB_PLDG_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.COUNTABLE_PLEDGE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_PLDG_PAID_TOTAL_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.PLEDGE_PAID_TOTAL each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_PLDG_BAL_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.PLEDGE_BALANCE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_NOTCB_PLDG_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.NOT_COUNTABLE_PLEDGE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_NOTCB_PLDG_BAL_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.NOT_COUNTABLE_PLEDGE_BALANCE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_OUTR_GIFT_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MEMO_OUTRIGHT_GIFT_AMOUNT each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_MG_PMT_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MEMO_MG_PMT each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_PLDG_PMT_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MEMO_PLEDGE_PMT each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_CNTB_PLDG_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MEMO_COUNTABLE_PLEDGE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_PLDG_PAID_TTL_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MEMO_PLEDGE_PAID_TOTAL each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_PLDG_BAL_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MEMO_PLEDGE_BALANCE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_NOTCB_PLDG_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MEMO_NOT_COUNTABLE_PLEDGE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_NOTCB_PLDG_BAL_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MEMO_NOT_COUNTABLE_PLEDGE_BALANCE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_3RD_PARTY_PMT_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.THIRD_PARTY_PLEDGE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_TESTM_COMMIT_CREDIT_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.TESTAMENTARY_COMMIT_CREDIT each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_CASH_CREDIT_PERS_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.CASH_CREDIT_PERSON each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_CASH_CREDIT_TRANS_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.CASH_CREDIT_TRANSACTION each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_COMMIT_CREDIT_PERS_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.COMMITMENT_CREDIT_PERSON each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_COMMIT_CREDIT_TRANS_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.COMMITMENT_CREDIT_TRANSACTION each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MG_TOTAL_COUNT" IS 'Sum count of GI_CREDIT_DETAIL.MG_TOTAL_COUNT each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MG_TOTAL_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MG_TOTAL_AMOUNT each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_GIFTS_MATCHED_COUNT" IS 'Count of GI_CREDIT_DETAIL.MG_TOTAL_COUNT each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_TRANS_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.TRANSACTION_AMOUNT each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_TRANS_PLDG_BAL_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.TRANSACTION_PLEDGE_BALANCE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_TRANS_PLDG_TOTAL_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.TRANSACTION_PLEDGE_TOTAL each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_OUTR_GIFT_COUNT" IS 'Count where transaction_category = Outright Gift each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MG_PMT_COUNT" IS 'Count where transaction_category = MG Payment each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_PLDG_PMT_COUNT" IS 'Count where transaction_category = Pledge Payment each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_CNTB_PLDG_COUNT" IS 'Count where transaction_category = Countable Pledge each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_NOTCB_PLDG_COUNT" IS 'Count where transaction_category = Non-Countable Pledge each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_OUTR_GIFT_COUNT" IS 'Count where transaction_category = Memo Outright Gift each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_MG_PMT_COUNT" IS 'Count where transaction_category = Memo MG Payment each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_PLDG_PMT_COUNT" IS 'Count where transaction_category = Memo Pledge Payment each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_CNTB_PLDG_COUNT" IS 'Count where transaction_category = Memo Countable Pledge each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_NOTCB_PLDG_COUNT" IS 'Count where transaction_category = Memo Non-Countable Pledge each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_3RD_PARTY_PMT_COUNT" IS 'Count where transaction_category = Third Party Payment each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_OUTR_GIFT_DCNT" IS 'Count by distinct date where transaction_category = Outright Gift each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MG_PMT_DCNT" IS 'Count by distinct date where transaction_category = MG Payment each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_PLDG_PMT_DCNT" IS 'Count by distinct date where transaction_category = Pledge Payment each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_CNTB_PLDG_DCNT" IS 'Count by distinct date where transaction_category = Countable Pledge each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_NOTCB_PLDG_DCNT" IS 'Count by distinct date where transaction_category = Non-Countable Pledge each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_OUTR_GIFT_DCNT" IS 'Count by distinct date where transaction_category = Memo Outright Gift each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_MG_PMT_DCNT" IS 'Count by distinct date where transaction_category = Memo MG Payment each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_PLDG_PMT_DCNT" IS 'Count by distinct date where transaction_category = Memo Pledge Payment each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_CNTB_PLDG_DCNT" IS 'Count by distinct date where transaction_category = Memo Countable Pledge each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_NOTCB_PLDG_DCNT" IS 'Count by distinct date where transaction_category = Memo Non-Countable Pledge each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_3RD_PARTY_PMT_DCNT" IS 'Count by distinct date where transaction_category = Third Party Payment each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_PLDG_PAID_TOTAL_COUNT" IS 'Count of GI_CREDIT_DETAIL.PLEDGE_PAID_TOTAL each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_PLDG_BAL_COUNT" IS 'Count of GI_CREDIT_DETAIL.PLEDGE_BALANCE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_PLDG_PAID_TTL_COUNT" IS 'Count of GI_CREDIT_DETAIL.MEMO_PLEDGE_PAID_TOTAL each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_PLDG_BAL_COUNT" IS 'Count of GI_CREDIT_DETAIL.MEMO_PLEDGE_BALANCE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_NOTCB_PLDG_BAL_COUNT" IS 'Count of GI_CREDIT_DETAIL.MEMO_NOT_COUNT_PLEDGE_BALANCE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_TRANS_PLDG_TOTAL_COUNT" IS 'Count of GI_CREDIT_DETAIL.TRANSACTION_PLEDGE_TOTAL each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_TRANS_PLDG_BAL_COUNT" IS 'Count of GI_CREDIT_DETAIL.TRANSACTION_PLEDGE_BALANCE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_TRANS_COUNT" IS 'Count of GI_CREDIT_DETAIL.TRANSACTION_AMOUNT each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_TESTM_COMMIT_CREDIT_COUNT" IS 'Count of GI_CREDIT_DETAIL.TESTAMENTARY_COMMIT_CREDIT each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_COMMIT_CREDIT_TRANS_COUNT" IS 'Count of GI_CREDIT_DETAIL.COMMITMENT_CREDIT_TRANSACTION each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_COMMIT_CREDIT_PERS_COUNT" IS 'Count of GI_CREDIT_DETAIL.COMMITMENT_CREDIT_PERSON each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_CASH_CREDIT_TRANS_COUNT" IS 'Count of GI_CREDIT_DETAIL.CASH_CREDIT_TRANSACTION each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_CASH_CREDIT_PERS_COUNT" IS 'Count of GI_CREDIT_DETAIL.CASH_CREDIT_PERSON each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_CASH_CREDIT_PERS_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.CASH_CREDIT_TRANSACTION each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_CASH_CREDIT_TRANS_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.CASH_CREDIT_PERSON each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_COMMIT_CREDIT_PERS_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.COMMITMENT_CREDIT_PERSON each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_COMMIT_CREDIT_TRANS_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.COMMITMENT_CREDIT_TRANSACTION each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_NOTCB_PLDG_BAL_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.MEMO_NOT_COUNT_PLEDGE_BALANCE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_PLDG_BAL_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.MEMO_PLEDGE_BALANCE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_MEMO_PLDG_PAID_TTL_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.MEMO_PLEDGE_PAID_TOTAL each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_GIFTS_MATCHED_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.MG_TOTAL_Count by distinct date each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_NOTCB_PLDG_BAL_COUNT" IS 'Count of GI_CREDIT_DETAIL.NOT_COUNTABLE_PLEDGE_BALANCE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_NOTCB_PLDG_BAL_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.NOT_COUNTABLE_PLEDGE_BALANCE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_PLDG_BAL_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.PLEDGE_BALANCE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_PLDG_PAID_TOTAL_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.PLEDGE_PAID_TOTAL each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_TESTM_COMMIT_CREDIT_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.TESTAMENTARY_COMMIT_CREDIT each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_TRANS_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.TRANSACTION_AMOUNT each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_TRANS_PLDG_BAL_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.TRANSACTION_PLEDGE_BALANCE each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."FY_TRANS_PLDG_TOTAL_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.TRANSACTION_PLEDGE_TOTAL each year as of end of reporting FY.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_RECORD_COUNT" IS 'Count of transaction records cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_DATE_COUNT" IS 'Count of unique transaction dates cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_GIFT_NUM_COUNT" IS 'Count of unique gift numbers (not including 0000000) cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_PLDG_NUM_COUNT" IS 'Count of unique pledge numbers (not including 0000000) cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_OUTR_GIFT_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.OUTRIGHT_GIFT_AMOUNT cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MG_PMT_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MG_PMT cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_PLDG_PMT_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.PLEDGE_PMT cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_CNTB_PLDG_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.COUNTABLE_PLEDGE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_PLDG_PAID_TOTAL_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.PLEDGE_PAID_TOTAL cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_PLDG_BAL_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.PLEDGE_BALANCE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_NOTCB_PLDG_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.NOT_COUNTABLE_PLEDGE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_NOTCB_PLDG_BAL_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.NOT_COUNTABLE_PLEDGE_BALANCE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_OUTR_GIFT_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MEMO_OUTRIGHT_GIFT_AMOUNT cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_MG_PMT_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MEMO_MG_PMT cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_PLDG_PMT_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MEMO_PLEDGE_PMT cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_CNTB_PLDG_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MEMO_COUNTABLE_PLEDGE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_PLDG_PAID_TTL_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MEMO_PLEDGE_PAID_TOTAL cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_PLDG_BAL_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MEMO_PLEDGE_BALANCE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_NOTCB_PLDG_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MEMO_NOT_COUNTABLE_PLEDGE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_NOTCB_PLDG_BAL_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MEMO_NOT_COUNTABLE_PLEDGE_BALANCE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_3RD_PARTY_PMT_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.THIRD_PARTY_PLEDGE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_TESTM_COMMIT_CREDIT_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.TESTAMENTARY_COMMIT_CREDIT cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_CASH_CREDIT_PERS_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.CASH_CREDIT_PERSON cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_CASH_CREDIT_TRANS_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.CASH_CREDIT_TRANSACTION cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_COMMIT_CREDIT_PERS_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.COMMITMENT_CREDIT_PERSON cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_COMMIT_CREDIT_TRANS_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.COMMITMENT_CREDIT_TRANSACTION cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MG_TOTAL_COUNT" IS 'Sum count of GI_CREDIT_DETAIL.MG_TOTAL_COUNT cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MG_TOTAL_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.MG_TOTAL_AMOUNT cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_GIFTS_MATCHED_COUNT" IS 'Count of GI_CREDIT_DETAIL.MG_TOTAL_COUNT cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_TRANS_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.TRANSACTION_AMOUNT cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_TRANS_PLDG_BAL_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.TRANSACTION_PLEDGE_BALANCE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_TRANS_PLDG_TOTAL_AMT" IS 'Sum amount of GI_CREDIT_DETAIL.TRANSACTION_PLEDGE_TOTAL cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_OUTR_GIFT_COUNT" IS 'Count where transaction_category = Outright Gift cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MG_PMT_COUNT" IS 'Count where transaction_category = MG Payment cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_PLDG_PMT_COUNT" IS 'Count where transaction_category = Pledge Payment cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_CNTB_PLDG_COUNT" IS 'Count where transaction_category = Countable Pledge cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_NOTCB_PLDG_COUNT" IS 'Count where transaction_category = Non-Countable Pledge cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_OUTR_GIFT_COUNT" IS 'Count where transaction_category = Memo Outright Gift cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_MG_PMT_COUNT" IS 'Count where transaction_category = Memo MG Payment cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_PLDG_PMT_COUNT" IS 'Count where transaction_category = Memo Pledge Payment cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_CNTB_PLDG_COUNT" IS 'Count where transaction_category = Memo Countable Pledge cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_NOTCB_PLDG_COUNT" IS 'Count where transaction_category = Memo Non-Countable Pledge cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_3RD_PARTY_PMT_COUNT" IS 'Count where transaction_category = Third Party Payment cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_OUTR_GIFT_DCNT" IS 'Count by distinct date where transaction_category = Outright Gift cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MG_PMT_DCNT" IS 'Count by distinct date where transaction_category = MG Payment cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_PLDG_PMT_DCNT" IS 'Count by distinct date where transaction_category = Pledge Payment cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_CNTB_PLDG_DCNT" IS 'Count by distinct date where transaction_category = Countable Pledge cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_NOTCB_PLDG_DCNT" IS 'Count by distinct date where transaction_category = Non-Countable Pledge cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_OUTR_GIFT_DCNT" IS 'Count by distinct date where transaction_category = Memo Outright Gift cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_MG_PMT_DCNT" IS 'Count by distinct date where transaction_category = Memo MG Payment cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_PLDG_PMT_DCNT" IS 'Count by distinct date where transaction_category = Memo Pledge Payment cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_CNTB_PLDG_DCNT" IS 'Count by distinct date where transaction_category = Memo Countable Pledge cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_NOTCB_PLDG_DCNT" IS 'Count by distinct date where transaction_category = Memo Non-Countable Pledge cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_3RD_PARTY_PMT_DCNT" IS 'Count by distinct date where transaction_category = Third Party Payment cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_PLDG_PAID_TOTAL_COUNT" IS 'Count of GI_CREDIT_DETAIL.PLEDGE_PAID_TOTAL cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_PLDG_BAL_COUNT" IS 'Count of GI_CREDIT_DETAIL.PLEDGE_BALANCE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_PLDG_PAID_TTL_COUNT" IS 'Count of GI_CREDIT_DETAIL.MEMO_PLEDGE_PAID_TOTAL cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_PLDG_BAL_COUNT" IS 'Count of GI_CREDIT_DETAIL.MEMO_PLEDGE_BALANCE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_NOTCB_PLDG_BAL_COUNT" IS 'Count of GI_CREDIT_DETAIL.MEMO_NOT_COUNT_PLEDGE_BALANCE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_TRANS_PLDG_TOTAL_COUNT" IS 'Count of GI_CREDIT_DETAIL.TRANSACTION_PLEDGE_TOTAL cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_TRANS_PLDG_BAL_COUNT" IS 'Count of GI_CREDIT_DETAIL.TRANSACTION_PLEDGE_BALANCE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_TRANS_COUNT" IS 'Count of GI_CREDIT_DETAIL.TRANSACTION_AMOUNT cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_TESTM_COMMIT_CREDIT_COUNT" IS 'Count of GI_CREDIT_DETAIL.TESTAMENTARY_COMMIT_CREDIT cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_COMMIT_CREDIT_TRANS_COUNT" IS 'Count of GI_CREDIT_DETAIL.COMMITMENT_CREDIT_TRANSACTION cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_COMMIT_CREDIT_PERS_COUNT" IS 'Count of GI_CREDIT_DETAIL.COMMITMENT_CREDIT_PERSON cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_CASH_CREDIT_TRANS_COUNT" IS 'Count of GI_CREDIT_DETAIL.CASH_CREDIT_TRANSACTION cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_CASH_CREDIT_PERS_COUNT" IS 'Count of GI_CREDIT_DETAIL.CASH_CREDIT_PERSON cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_CASH_CREDIT_PERS_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.CASH_CREDIT_TRANSACTION cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_CASH_CREDIT_TRANS_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.CASH_CREDIT_PERSON cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_COMMIT_CREDIT_PERS_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.COMMITMENT_CREDIT_PERSON cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_COMMIT_CREDIT_TRANS_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.COMMITMENT_CREDIT_TRANSACTION cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_NOTCB_PLDG_BAL_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.MEMO_NOT_COUNT_PLEDGE_BALANCE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_PLDG_BAL_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.MEMO_PLEDGE_BALANCE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_MEMO_PLDG_PAID_TTL_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.MEMO_PLEDGE_PAID_TOTAL cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_GIFTS_MATCHED_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.MG_TOTAL_Count by distinct date cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_NOTCB_PLDG_BAL_COUNT" IS 'Count of GI_CREDIT_DETAIL.NOT_COUNTABLE_PLEDGE_BALANCE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_NOTCB_PLDG_BAL_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.NOT_COUNTABLE_PLEDGE_BALANCE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_PLDG_BAL_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.PLEDGE_BALANCE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_PLDG_PAID_TOTAL_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.PLEDGE_PAID_TOTAL cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_TESTM_COMMIT_CREDIT_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.TESTAMENTARY_COMMIT_CREDIT cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_TRANS_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.TRANSACTION_AMOUNT cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_TRANS_PLDG_BAL_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.TRANSACTION_PLEDGE_BALANCE cummulative lifetime to end of reporting year.';
COMMENT ON COLUMN "PENTAHO"."C_GI_CREDIT_SUMMARY"."LT_TRANS_PLDG_TOTAL_DCNT" IS 'Count by distinct date of GI_CREDIT_DETAIL.TRANSACTION_PLEDGE_TOTAL cummulative lifetime to end of reporting year.';
