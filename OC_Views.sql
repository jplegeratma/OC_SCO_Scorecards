-- OC Views

create or replace view MHTEAM.DWDQ.INF_SC_OC_FAILS(
	RUN_DATE,
	DQ_BATCH_SEQ,
	ID,
	BENCHMARK,
	MEASURE,
	CDE_ENC_MCO,
	ENC_CLAIM_NO,
	ENC_CLAIM_SUFFIX,
	CDE_CLM_DISPOSITION,
	DOS_FROM,
	CLAIM_TYPE,
	ETL_CHECK,
	DESC1,
	VALUE1,
	DESC2,
	VALUE2,
	DESC3,
	VALUE3,
	DESC4,
	VALUE4,
	DESC5,
	VALUE5,
	DESC6,
	VALUE6,
	DESC7,
	VALUE7,
	DESC8,
	VALUE8,
	DESC9,
	VALUE9,
	DESC10,
	VALUE10,
	DESC11,
	VALUE11
) as
      SELECT RUN_DATE,
             DQ_BATCH_SEQ,
             ID,
             BENCHMARK,
             MEASURE,
             CDE_ENC_MCO,
             ENC_CLAIM_NO,
             ENC_CLAIM_SUFFIX,
             CDE_CLM_DISPOSITION,
             TO_CHAR (DOS_FROM, 'MM/DD/YYYY')     AS DOS_FROM,
             CLAIM_TYPE,
             ETL_CHECK,
             DESC1,
             VALUE1,
             DESC2,
             VALUE2,
             DESC3,
             VALUE3,
             DESC4,
             VALUE4,
             DESC5,
             VALUE5,
             DESC6,
             VALUE6,
             DESC7,
             VALUE7,
             DESC8,
             VALUE8,
             DESC9,
             VALUE9,
             DESC10,
             VALUE10,
             DESC11,
             VALUE11
        FROM ((SELECT f."RUN_DATE",
                      f."DQ_BATCH_SEQ",
                      f."ID",
                      f."BENCHMARK",
                      m."MEASURE",
                      f."CDE_ENC_MCO",
                      f."ENC_CLAIM_NO",
                      f."ENC_CLAIM_SUFFIX",
                      f."CDE_CLM_DISPOSITION",
                      f."DOS_FROM",
                      f."CLAIM_TYPE",
                      f."ETL_CHECK",
                      f."DESC1",
                      f."VALUE1",
                      f."DESC2",
                      f."VALUE2",
                      f."DESC3",
                      f."VALUE3",
                      f."DESC4",
                      f."VALUE4",
                      f."DESC5",
                      f."VALUE5",
                      f."DESC6",
                      f."VALUE6",
                      f."DESC7",
                      f."VALUE7",
                      f."DESC8",
                      f."VALUE8",
                      f."DESC9",
                      f."VALUE9",
                      f."DESC10",
                      f."VALUE10",
                      f."DESC11",
                      f."VALUE11"
                 FROM (  SELECT RUN_DATE,
                                DQ_BATCH_SEQ,
                                ID,
                                BENCHMARK,
                                CDE_ENC_MCO,
                                ENC_CLAIM_NO,
                                ENC_CLAIM_SUFFIX,
                                CDE_CLM_DISPOSITION,
                                DOS_FROM,
                                CLAIM_TYPE,
                                ETL_CHECK,
                                DESC1,
                                VALUE1,
                                DESC2,
                                VALUE2,
                                DESC3,
                                VALUE3,
                                DESC4,
                                VALUE4,
                                DESC5,
                                VALUE5,
                                DESC6,
                                VALUE6,
                                DESC7,
                                VALUE7,
                                DESC8,
                                VALUE8,
                                DESC9,
                                VALUE9,
                                DESC10,
                                VALUE10,
                                DESC11,
                                VALUE11
                           FROM (SELECT RUN_DATE,
                                        DQ_BATCH_SEQ,
                                        ID,
                                        BENCHMARK,
                                        FIELD_ID,
                                        BENCHMARK_THRESHOLD,
                                        CDE_ENC_MCO,
                                        ENC_CLAIM_NO,
                                        ENC_CLAIM_SUFFIX,
                                        CDE_CLM_DISPOSITION,
                                        DOS_FROM,
                                        CLAIM_TYPE,
                                        ETL_CHECK,
                                        DESC1,
                                        CASE
                                            WHEN (    DESC1 IS NOT NULL
                                                  AND (   VALUE1 IS NULL
                                                       OR VALUE1 IN ('+',
                                                                     '-',
                                                                     '#',
                                                                     '',
                                                                     ' ',
                                                                     'Unknown')))
                                            THEN
                                                'Missing or Invalid'
                                            ELSE
                                                VALUE1
                                        END                              AS VALUE1,
                                        DESC2,
                                        CASE
                                            WHEN (    DESC2 IS NOT NULL
                                                  AND (   VALUE2 IS NULL
                                                       OR VALUE2 IN ('+',
                                                                     '-',
                                                                     '#',
                                                                     '',
                                                                     ' ',
                                                                     'Unknown')))
                                            THEN
                                                'Missing or Invalid'
                                            ELSE
                                                VALUE2
                                        END                              AS VALUE2,
                                        DESC3,
                                        CASE
                                            WHEN (    DESC3 IS NOT NULL
                                                  AND (   VALUE3 IS NULL
                                                       OR VALUE3 IN ('+',
                                                                     '-',
                                                                     '#',
                                                                     '',
                                                                     ' ',
                                                                     'Unknown')))
                                            THEN
                                                'Missing or Invalid'
                                            ELSE
                                                VALUE3
                                        END                              AS VALUE3,
                                        DESC4,
                                        CASE
                                            WHEN (    DESC4 IS NOT NULL
                                                  AND (   VALUE4 IS NULL
                                                       OR VALUE4 IN ('+',
                                                                     '-',
                                                                     '#',
                                                                     '',
                                                                     ' ',
                                                                     'Unknown')))
                                            THEN
                                                'Missing or Invalid'
                                            ELSE
                                                VALUE4
                                        END                              AS VALUE4,
                                        DESC5,
                                        CASE
                                            WHEN (    DESC5 IS NOT NULL
                                                  AND (   VALUE5 IS NULL
                                                       OR VALUE5 IN ('+',
                                                                     '-',
                                                                     '#',
                                                                     '',
                                                                     ' ',
                                                                     'Unknown')))
                                            THEN
                                                'Missing or Invalid'
                                            ELSE
                                                VALUE5
                                        END                              AS VALUE5,
                                        DESC6,
                                        CASE
                                            WHEN (    DESC6 IS NOT NULL
                                                  AND (   VALUE6 IS NULL
                                                       OR VALUE6 IN ('+',
                                                                     '-',
                                                                     '#',
                                                                     '',
                                                                     ' ',
                                                                     'Unknown')))
                                            THEN
                                                'Missing or Invalid'
                                            ELSE
                                                VALUE6
                                        END                              AS VALUE6,
                                        DESC7,
                                        CASE
                                            WHEN (    DESC7 IS NOT NULL
                                                  AND (   VALUE7 IS NULL
                                                       OR VALUE7 IN ('+',
                                                                     '-',
                                                                     '#',
                                                                     '',
                                                                     ' ',
                                                                     'Unknown')))
                                            THEN
                                                'Missing or Invalid'
                                            ELSE
                                                VALUE7
                                        END                              AS VALUE7,
                                        DESC8,
                                        CASE
                                            WHEN (    DESC8 IS NOT NULL
                                                  AND (   VALUE8 IS NULL
                                                       OR VALUE8 IN ('+',
                                                                     '-',
                                                                     '#',
                                                                     '',
                                                                     ' ',
                                                                     'Unknown')))
                                            THEN
                                                'Missing or Invalid'
                                            ELSE
                                                VALUE8
                                        END                              AS VALUE8,
                                        DESC9,
                                        CASE
                                            WHEN (    DESC9 IS NOT NULL
                                                  AND (   VALUE9 IS NULL
                                                       OR VALUE9 IN ('+',
                                                                     '-',
                                                                     '#',
                                                                     '',
                                                                     ' ',
                                                                     'Unknown')))
                                            THEN
                                                'Missing or Invalid'
                                            ELSE
                                                VALUE9
                                        END                              AS VALUE9,
                                        DESC10,
                                        CASE
                                            WHEN (    DESC10 IS NOT NULL
                                                  AND (   VALUE10 IS NULL
                                                       OR VALUE10 IN ('+',
                                                                      '-',
                                                                      '#',
                                                                      '',
                                                                      ' ',
                                                                      'Unknown')))
                                            THEN
                                                'Missing or Invalid'
                                            ELSE
                                                VALUE10
                                        END                              AS VALUE10,
                                        DESC11,
                                        CASE
                                            WHEN (    DESC11 IS NOT NULL
                                                  AND (   VALUE11 IS NULL
                                                       OR VALUE11 IN ('+',
                                                                      '-',
                                                                      '#',
                                                                      '',
                                                                      ' ',
                                                                      'Unknown')))
                                            THEN
                                                'Missing or Invalid'
                                            ELSE
                                                VALUE11
                                        END                              AS VALUE11,
                                        RANK ()
                                            OVER (
                                                PARTITION BY RUN_DATE,
                                                             CDE_ENC_MCO,
                                                             ID
                                                ORDER BY
                                                    RUN_DATE,
                                                    CDE_ENC_MCO,
                                                    ID,
                                                    ENC_CLAIM_NO,
                                                    ENC_CLAIM_SUFFIX)    AS rnk
                                   FROM MHTEAM.DWDQ.INF_B_SC_STG_OC_FAILS)
                          WHERE rnk <= 25
                       ORDER BY ID, ENC_CLAIM_NO, ENC_CLAIM_SUFFIX) f,
                      (SELECT run_date,
                              cde_enc_mco,
                              id,
                              measure,
                              benchmark,
                              pct
                         FROM (SELECT *
                                 FROM (SELECT run_date,
                                              ID,
                                              MEASURE,
                                                TO_NUMBER (
                                                    SUBSTR (BENCHMARK, 1, 2)--,
                                                    --99
                                                    )
                                              / 100    AS BENCHMARK,
-- sugessted by copilot                       PCT

                                              CCI,
                                              NWI,
                                              UCC
                                         FROM MHTEAM.DWDQ.INF_B_SC_STG_OC_REP_STEP2) s
                                      UNPIVOT 
                                        ( PCT FOR CDE_ENC_MCO 
                                          IN (CCI, NWI, UCC))
                                          )
                                          
-- replaced by copilot                   ( (PCT)
--                                              FOR CDE_ENC_MCO
--                                              IN (CCI, NWI, UCC)))
                        WHERE     PCT < BENCHMARK
                              -- APCD measures removed per Nicole Tibbetts from meeting on Tue 7/12/2022
                              AND MEASURE NOT IN
                                      ('34 Billing Provider APCD Organization ID',
                                       '34 Servicing Provider APCD Organization ID'))
                      m
                WHERE     1 = 1
                      AND m.run_date = f.run_date
                      AND m.id = f.id      --                   AND m.miss = 1
                      AND m.cde_enc_mco = f.cde_enc_mco))
    ORDER BY RUN_DATE, CDE_ENC_MCO, ID;

 create or replace view MHTEAM.DWDQ.INF_SC_OC_PROVIDER_MISS_IDS_CCI(
	S_RUN_DATE,
	S_PROV_ID,
	B_RUN_DATE,
	B_PROV_ID,
	P_RUN_DATE,
	P_PROV_ID
) as
    SELECT S_RUN_DATE,
           S_PROV_ID,
           B_RUN_DATE,
           B_PROV_ID,
           P_RUN_DATE,
           P_PROV_ID
      FROM (  SELECT *
                FROM MHTEAM.DWDQ.INF_B_SC_STG_OC_PROVIDER_MISSING_IDS
               WHERE (S_MCO = 'CCI' OR B_MCO = 'CCI' OR P_MCO = 'CCI')
            ORDER BY S_RUN_DATE,
                     S_RNK,
                     B_RUN_DATE,
                     B_RNK,
                     P_RUN_DATE,
                     P_RNK);

create or replace view MHTEAM.DWDQ.INF_SC_OC_PROVIDER_MISS_IDS_NWI(
	S_RUN_DATE,
	S_PROV_ID,
	B_RUN_DATE,
	B_PROV_ID,
	P_RUN_DATE,
	P_PROV_ID
) as
    SELECT S_RUN_DATE,
           S_PROV_ID,
           B_RUN_DATE,
           B_PROV_ID,
           P_RUN_DATE,
           P_PROV_ID
      FROM (  SELECT *
                FROM MHTEAM.DWDQ.INF_B_SC_STG_OC_PROVIDER_MISSING_IDS
               WHERE (S_MCO = 'NWI' OR B_MCO = 'NWI' OR P_MCO = 'NWI')
            ORDER BY S_RUN_DATE,
                     S_RNK,
                     B_RUN_DATE,
                     B_RNK,
                     P_RUN_DATE,
                     P_RNK);

create or replace view MHTEAM.DWDQ.INF_SC_OC_PROVIDER_MISS_IDS_UCC(
	S_RUN_DATE,
	S_PROV_ID,
	B_RUN_DATE,
	B_PROV_ID,
	P_RUN_DATE,
	P_PROV_ID
) as
    SELECT S_RUN_DATE,
           S_PROV_ID,
           B_RUN_DATE,
           B_PROV_ID,
           P_RUN_DATE,
           P_PROV_ID
      FROM (  SELECT *
                FROM MHTEAM.DWDQ.INF_B_SC_STG_OC_PROVIDER_MISSING_IDS
               WHERE (S_MCO = 'UCC' OR B_MCO = 'UCC' OR P_MCO = 'UCC')
            ORDER BY S_RUN_DATE,
                     S_RNK,
                     B_RUN_DATE,
                     B_RNK,
                     P_RUN_DATE,
                     P_RNK);

create or replace view MHTEAM.DWDQ.INF_SC_OC_PROVIDER_STATS(
	VAL1,
	VAL2,
	VAL7,
	VAL3,
	VAL4,
	VAL8,
	VAL5,
	VAL6,
	VAL9,
	VAL16,
	VAL17,
	VAL18,
	R1,
	C1
) as
    SELECT VAL1,
           VAL2,
           VAL7,
           VAL3,
           VAL4,
           VAL8,
           VAL5,
           VAL6,
           VAL9,
           TO_CHAR (NVAL16, '99,999')      AS VAL16,
           TO_CHAR (NVAL17, '99,999')      AS VAL17,
           TO_CHAR (NVAL18, '99,9999')     AS VAL18,
           R1,
           C1
      FROM MHTEAM.DWDQ.INF_B_SC_STG_OC_PROVIDER_STATS;

create or replace view MHTEAM.DWDQ.INF_SC_OC_QUARTER(
	DATE_STR,
	RUN_DATE,
	EMAIL_BODY
) as
    SELECT DISTINCT date_str, run_date, a ||                            --b ||
                                             c AS email_body
      FROM (SELECT date_str,
                   run_date,
                   a,
                   -- keeping the listagg in case running multiple quarters
                   --                 LISTAGG (b, ',') WITHIN GROUP (ORDER BY b) AS b,
                   c
              FROM (  SELECT date_str,
                             run_date,
                                'OC quarterly spreadsheet: <br/>ONECARE_REPORT_CARD_'
                             || date_str
                             || '.xlsx '
                             || '<br/>OC provider summary: <br/>Provider_Summary_Evaluation_'
                             || date_str
                             || '_OC.xlsx <br/><br/><br/>'                    a,
                             '<br/><br/>Sincerely,<br/>EHS Data Integrity'    c
                        FROM (                   --MHTEAM.DWDQ.INF_SC_STEP3_16_ACO_RUNDATE
                              SELECT RUN_DATE,
                                     QUARTER || '_' || DATE_STR     AS DATE_STR
                                FROM (SELECT DISTINCT
                                             TO_CHAR (
                                                 TO_DATE (P2.PARAM_VALUE,
                                                          'YYYYMMDD'),
                                                 'DD-MON-YYYY')    AS RUN_DATE,
                                             TO_CHAR (
                                                 TO_DATE (P2.PARAM_VALUE,
                                                          'YYYYMMDD'),
                                                 'YYYYMMDD')       AS DATE_STR,
                                             CASE
                                                 WHEN P3.PARAM_VALUE = '12'
                                                 THEN
                                                        'CY'
                                                     || TO_CHAR (
                                                            ADD_MONTHS (
                                                                TO_DATE (
                                                                    P2.PARAM_VALUE,
                                                                    'YYYYMMDD'),
                                                                -12),
                                                            'YY')
                                                 WHEN TO_NUMBER (
                                                          SUBSTR (
                                                              P1.PARAM_VALUE,
                                                              5,
                                                              2)) IN
                                                          (1, 2, 3)
                                                 THEN
                                                     'Q1'
                                                 WHEN TO_NUMBER (
                                                          SUBSTR (
                                                              P1.PARAM_VALUE,
                                                              5,
                                                              2)) IN
                                                          (4, 5, 6)
                                                 THEN
                                                     'Q2'
                                                 WHEN TO_NUMBER (
                                                          SUBSTR (
                                                              P1.PARAM_VALUE,
                                                              5,
                                                              2)) IN
                                                          (7, 8, 9)
                                                 THEN
                                                     'Q3'
                                                 WHEN TO_NUMBER (
                                                          SUBSTR (
                                                              P1.PARAM_VALUE,
                                                              5,
                                                              2)) IN
                                                          (10, 11, 12)
                                                 THEN
                                                     'Q4'
                                             END                   AS QUARTER
                                        FROM MHTEAM.DWDQ.INF_B_DQ_PARAMS p1,
                                             MHTEAM.DWDQ.INF_B_DQ_PARAMS p2,
                                             MHTEAM.DWDQ.INF_B_DQ_PARAMS p3
                                       WHERE     p1.PARAM_NAME = 'OC_MIN_DOS'
                                             AND p2.PARAM_NAME = 'OC_RUN_DATE'
                                             AND p3.PARAM_NAME = 'OC_RUN_MNTHS'))
                    ORDER BY date_str, run_date)  --        GROUP BY date_str,
                                                  --                 run_date,
           --                 a,
           --                 c
           --        ORDER BY date_str,
           --                 run_date,
           --                 a,
           --                 c
           );

create or replace view MHTEAM.DWDQ.INF_SC_OC_REPORT(
	RUN_DATE,
	MEASURE,
	CLAIMTYPE,
	BENCHMARK,
	CCI,
	CCI_DENOM,
	NWI,
	NWI_DENOM,
	UCC,
	UCC_DENOM
) as
    SELECT RUN_DATE,
           MEASURE,
           CLAIMTYPE,
           BENCHMARK,
           CCI,
           CCI_DENOM,
           NWI,
           NWI_DENOM,
           UCC,
           UCC_DENOM
      FROM MHTEAM.DWDQ.INF_B_SC_STG_OC_REP_STEP2
     -- APCD measures removed per Nicole Tibbetts from meeting on Tue 7/12/2022
     WHERE MEASURE NOT IN
               ('34 Billing Provider APCD Organization ID',
                '34 Servicing Provider APCD Organization ID');
                
                                                                                                   