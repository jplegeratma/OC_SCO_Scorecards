CREATE TABLE INF_B_DA_MNTH_MCO_ACO_BASE
(
  RUN_DATE                      DATE,
  DQ_BATCH_SEQ                  NUMBER,
  CDE_ENC_MCO                   VARCHAR2(3 BYTE) NOT NULL,
  ACO                           VARCHAR2(10 BYTE),
  CDE_CLM_TYPE                  VARCHAR2(1 BYTE) NOT NULL,
  SERVICE_MNTH                  DATE,
  DOS_FROM_DT                   DATE,
  DOS_TO_DT                     DATE,
  REMIT_FROM_DT                 DATE,
  REMIT_THRU_DT                 DATE,
  ENC_CLAIM_NO                  VARCHAR2(20 BYTE) NOT NULL,
  ENC_CLAIM_SUFFIX              VARCHAR2(4 BYTE) NOT NULL,
  AMT_BILLED                    NUMBER(9,2),
  AMT_PAID                      NUMBER(9,2),
  WH_FROM_DT                    DATE,
  WH_THRU_DT                    DATE,
  IND_OFFSET                    VARCHAR2(1 BYTE) NOT NULL,
  CDE_CLM_DISPOSITION           VARCHAR2(1 BYTE) NOT NULL,
  MEM_SEQ                       NUMBER(10)      NOT NULL,
  ID_MEDICAID_CRNT              VARCHAR2(12 BYTE),
  ID_MEDICAID_VALID_FROM_DT_TM  DATE            NOT NULL
);
/
CREATE TABLE INF_B_DA_MNTH_MCO_ACO_REVCDE_BASE
(
  RUN_DATE             DATE,
  DQ_BATCH_SEQ         NUMBER,
  CDE_ENC_MCO          VARCHAR2(3 BYTE)         NOT NULL,
  ACO                  VARCHAR2(10 BYTE),
  SERVICE_MNTH         DATE,
  CDE_CLM_TYPE         VARCHAR2(1 BYTE)         NOT NULL,
  DOS_FROM_DT          DATE,
  DOS_TO_DT            DATE,
  REMIT_FROM_DT        DATE,
  REMIT_THRU_DT        DATE,
  ENC_CLAIM_NO         VARCHAR2(20 BYTE)        NOT NULL,
  ENC_CLAIM_SUFFIX     VARCHAR2(4 BYTE)         NOT NULL,
  AMT_BILLED           NUMBER(9,2),
  AMT_PAID             NUMBER(9,2),
  ATTRSRV_SEQ          NUMBER(10)               NOT NULL,
  ATTRENC_SEQ          NUMBER(10)               NOT NULL,
  CDE_CLM_DISPOSITION  VARCHAR2(1 BYTE)         NOT NULL,
  CDE_REVENUE          NUMBER(4)                NOT NULL,
  CDE_ENC_REC_IND      VARCHAR2(1 BYTE)         NOT NULL
);
/
CREATE TABLE INF_B_DA_MNTH_MCO_CLMTYP
(
  RUN_DATE                   DATE               NOT NULL,
  DQ_BATCH_SEQ               NUMBER             NOT NULL,
  CDE_ENC_MCO                VARCHAR2(3 BYTE)   NOT NULL,
  CDE_CLM_TYPE               VARCHAR2(1 BYTE)   NOT NULL,
  SERVICE_MNTH               DATE               NOT NULL,
  TOTAL_DISTINCT_CLAIMS      NUMBER,
  TOTAL_UTILIZING_MEMBERS    NUMBER,
  TOTAL_PD                   NUMBER,
  AVG_TOTAL_PD               NUMBER,
  MIN_TOTAL_PD               NUMBER,
  MAX_TOTAL_PD               NUMBER,
  STDEV_TOTAL_PD             NUMBER,
  MED_TOTAL_PD               NUMBER,
  TOTAL_REC                  NUMBER,
  TOTAL_PD_12_MNTH_RLNG_SUM  NUMBER,
  AVG_PD_12_MNTH_RLNG_AVG    NUMBER,
  AVG_PD_12_MNTH_RLNG_STDEV  NUMBER,
  MED_PD_12_MNTH_RLNG_AVG    NUMBER
);
/
CREATE TABLE INF_B_DA_MNTH_MCO_ACO_CLMTYP
(
  RUN_DATE                   DATE               NOT NULL,
  DQ_BATCH_SEQ               NUMBER             NOT NULL,
  CDE_ENC_MCO                VARCHAR2(3 BYTE)   NOT NULL,
  ACO                        VARCHAR2(10 BYTE)  NOT NULL,
  CDE_CLM_TYPE               VARCHAR2(1 BYTE),
  SERVICE_MNTH               DATE               NOT NULL,
  TOTAL_DISTINCT_CLAIMS      NUMBER,
  TOTAL_UTILIZING_MEMBERS    NUMBER,
  TOTAL_PD                   NUMBER,
  AVG_TOTAL_PD               NUMBER,
  MIN_TOTAL_PD               NUMBER,
  MAX_TOTAL_PD               NUMBER,
  STDEV_TOTAL_PD             NUMBER,
  MED_TOTAL_PD               NUMBER,
  TOTAL_REC                  NUMBER,
  TOTAL_PD_12_MNTH_RLNG_SUM  NUMBER,
  AVG_PD_12_MNTH_RLNG_AVG    NUMBER,
  AVG_PD_12_MNTH_RLNG_STDEV  NUMBER,
  MED_PD_12_MNTH_RLNG_AVG    NUMBER
);
/
CREATE TABLE INF_B_DA_MNTH_CLMNUM_MCO_CLMTYP
(
  RUN_DATE                    DATE              NOT NULL,
  DQ_BATCH_SEQ                NUMBER            NOT NULL,
  CDE_ENC_MCO                 VARCHAR2(3 BYTE)  NOT NULL,
  CDE_CLM_TYPE                VARCHAR2(1 BYTE)  NOT NULL,
  SERVICE_MNTH                DATE              NOT NULL,
  TOTAL_DISTINCT_CLAIMS       NUMBER,
  TOTAL_PD                    NUMBER,
  AVG_TOTAL_PD                NUMBER,
  MIN_TOTAL_PD                NUMBER,
  MAX_TOTAL_PD                NUMBER,
  STDEV_TOTAL_PD              NUMBER,
  MED_TOTAL_PD                NUMBER,
  TOTAL_REC                   NUMBER,
  AVG_REC                     NUMBER,
  MIN_REC                     NUMBER,
  MAX_REC                     NUMBER,
  STDEV_REC                   NUMBER,
  MED_REC                     NUMBER,
  TOTAL_PD_12_MNTH_RLNG_SUM   NUMBER,
  AVG_PD_12_MNTH_RLNG_AVG     NUMBER,
  AVG_PD_12_MNTH_RLNG_STDEV   NUMBER,
  MED_PD_12_MNTH_RLNG_AVG     NUMBER,
  TOTAL_REC_12_MNTH_RLNG_SUM  NUMBER,
  AVG_REC_12_MNTH_RLNG_AVG    NUMBER,
  AVG_REC_12_MNTH_RLNG_STDEV  NUMBER,
  MED_REC_12_MNTH_RLNG_AVG    NUMBER
);
/
CREATE TABLE INF_B_DA_MNTH_CLMNUM_MCO_ACO_CLMTYP
(
  RUN_DATE                    DATE              NOT NULL,
  DQ_BATCH_SEQ                NUMBER            NOT NULL,
  CDE_ENC_MCO                 VARCHAR2(3 BYTE)  NOT NULL,
  ACO                         VARCHAR2(10 BYTE),
  CDE_CLM_TYPE                VARCHAR2(1 BYTE),
  SERVICE_MNTH                DATE              NOT NULL,
  TOTAL_DISTINCT_CLAIMS       NUMBER,
  TOTAL_PD                    NUMBER,
  AVG_TOTAL_PD                NUMBER,
  MIN_TOTAL_PD                NUMBER,
  MAX_TOTAL_PD                NUMBER,
  STDEV_TOTAL_PD              NUMBER,
  MED_TOTAL_PD                NUMBER,
  TOTAL_REC                   NUMBER,
  AVG_REC                     NUMBER,
  MIN_REC                     NUMBER,
  MAX_REC                     NUMBER,
  STDEV_REC                   NUMBER,
  MED_REC                     NUMBER,
  TOTAL_PD_12_MNTH_RLNG_SUM   NUMBER,
  AVG_PD_12_MNTH_RLNG_AVG     NUMBER,
  AVG_PD_12_MNTH_RLNG_STDEV   NUMBER,
  MED_PD_12_MNTH_RLNG_AVG     NUMBER,
  TOTAL_REC_12_MNTH_RLNG_SUM  NUMBER,
  AVG_REC_12_MNTH_RLNG_AVG    NUMBER,
  AVG_REC_12_MNTH_RLNG_STDEV  NUMBER,
  MED_REC_12_MNTH_RLNG_AVG    NUMBER
);
/
CREATE TABLE INF_B_DA_MNTH_UTIL_MEM_MCO_CLMTYP
(
  RUN_DATE                    DATE              NOT NULL,
  DQ_BATCH_SEQ                NUMBER            NOT NULL,
  CDE_ENC_MCO                 VARCHAR2(3 BYTE)  NOT NULL,
  CDE_CLM_TYPE                VARCHAR2(1 BYTE)  NOT NULL,
  SERVICE_MNTH                DATE              NOT NULL,
  TOTAL_DISTINCT_CLAIMS       NUMBER,
  TOTAL_UTILIZING_MEMBERS     NUMBER,
  TOTAL_PAID                  NUMBER,
  AVG_TOTAL_PD                NUMBER,
  MIN_TOTAL_PD                NUMBER,
  MAX_TOTAL_PD                NUMBER,
  STDEV_TOTAL_PD              NUMBER,
  MEDIAN_TOTAL_PD             NUMBER,
  TOTAL_REC                   NUMBER,
  AVG_REC                     NUMBER,
  MIN_REC                     NUMBER,
  MAX_REC                     NUMBER,
  STDEV_REC                   NUMBER,
  MEDIAN_REC                  NUMBER,
  TOTAL_PD_12_MNTH_RLNG_SUM   NUMBER,
  AVG_PD_12_MNTH_RLNG_AVG     NUMBER,
  AVG_PD_12_MNTH_RLNG_STDEV   NUMBER,
  MED_PD_12_MNTH_RLNG_AVG     NUMBER,
  TOTAL_REC_12_MNTH_RLNG_SUM  NUMBER,
  AVG_REC_12_MNTH_RLNG_AVG    NUMBER,
  AVG_REC_12_MNTH_RLNG_STDEV  NUMBER,
  MED_REC_12_MNTH_RLNG_AVG    NUMBER
);
/
CREATE TABLE INF_B_DA_MNTH_UTIL_MEM_MCO_ACO_CLMTYP
(
  RUN_DATE                    DATE              NOT NULL,
  DQ_BATCH_SEQ                NUMBER            NOT NULL,
  CDE_ENC_MCO                 VARCHAR2(3 BYTE)  NOT NULL,
  ACO                         VARCHAR2(10 BYTE),
  CDE_CLM_TYPE                VARCHAR2(1 BYTE),
  SERVICE_MNTH                DATE              NOT NULL,
  TOTAL_DISTINCT_CLAIMS       NUMBER,
  TOTAL_UTILIZING_MEMBERS     NUMBER,
  TOTAL_PD                    NUMBER,
  AVG_TOTAL_PD                NUMBER,
  MIN_TOTAL_PD                NUMBER,
  MAX_TOTAL_PD                NUMBER,
  STDEV_TOTAL_PD              NUMBER,
  MED_TOTAL_PD                NUMBER,
  TOTAL_REC                   NUMBER,
  AVG_REC                     NUMBER,
  MIN_REC                     NUMBER,
  MAX_REC                     NUMBER,
  STDEV_REC                   NUMBER,
  MED_REC                     NUMBER,
  TOTAL_PD_12_MNTH_RLNG_SUM   NUMBER,
  AVG_PD_12_MNTH_RLNG_AVG     NUMBER,
  AVG_PD_12_MNTH_RLNG_STDEV   NUMBER,
  MED_PD_12_MNTH_RLNG_AVG     NUMBER,
  TOTAL_REC_12_MNTH_RLNG_SUM  NUMBER,
  AVG_REC_12_MNTH_RLNG_AVG    NUMBER,
  AVG_REC_12_MNTH_RLNG_STDEV  NUMBER,
  MED_REC_12_MNTH_RLNG_AVG    NUMBER
);
/
CREATE TABLE INF_B_DA_MNTH_REVCDE_CLMNUM_MCO_CLMTYP_A
(
  RUN_DATE                     DATE,
  DQ_BATCH_SEQ                 NUMBER,
  CDE_ENC_MCO                  VARCHAR2(3 BYTE) NOT NULL,
  SERVICE_MNTH                 DATE,
  CDE_CLM_TYPE                 VARCHAR2(1 BYTE) NOT NULL,
  TOTAL_REC                    NUMBER,
  TOTAL_DISTINCT_CLAIMS        NUMBER,
  TOTAL_REVCDE                 NUMBER,
  DIFF_TOTAL_REC_TOTAL_REVCDE  NUMBER,
  AVG_REC_PER_CLAIM            NUMBER,
  AVG_REVCDE_PER_CLAIM         NUMBER,
  AVG_RATIO_REC_TO_REVCDE      NUMBER,
  MIN_RATIO_REC_TO_REVCDE      NUMBER,
  MAX_RATIO_REC_TO_REVCDE      NUMBER,
  STDDEV_RATIO_REC_TO_REVCDE   NUMBER,
  MEDIAN_RATIO_REC_TO_REVCDE   NUMBER
);
/
CREATE TABLE INF_B_DA_MNTH_REVCDE_CLMNUM_MCO_CLMTYP_B
(
  RUN_DATE                        DATE,
  DQ_BATCH_SEQ                    NUMBER,
  CDE_ENC_MCO                     VARCHAR2(3 BYTE) NOT NULL,
  CDE_CLM_TYPE                    VARCHAR2(1 BYTE) NOT NULL,
  SERVICE_MNTH                    DATE,
  TOTAL_REC                       NUMBER,
  TOTAL_DISTINCT_CLAIMS           NUMBER,
  TOTAL_REVCDE                    NUMBER,
  DIFF_TOTAL_REC_TOTAL_REVCDE     NUMBER,
  AVG_REC_PER_CLAIM               NUMBER,
  AVG_REVCDE_PER_CLAIM            NUMBER,
  RATIO_AVG_REC_TO_REVCDE         NUMBER,
  MIN_RATIO_AVG_REC_TO_REVCDE     NUMBER,
  MAX_RATIO_AVG_REC_TO_REVCDE     NUMBER,
  STDDEV_RATIO_AVG_REC_TO_REVCDE  NUMBER,
  MED_RATIO_AVG_REC_TO_REVCDE     NUMBER
);
/
EXIT









