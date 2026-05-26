/*
DROP TABLE INF_B_SC_STG_OC_SCORECARD_LOOKUP CASCADE CONSTRAINTS;

CREATE TABLE INF_B_SC_STG_OC_SCORECARD_LOOKUP
(
  ID                   NUMBER(4),
  BENCHMARK            VARCHAR2(100 BYTE),
  BENCHMARK_NAME       VARCHAR2(50 BYTE),
  FIELD_ID             VARCHAR2(50 BYTE),
  CLAIM_TYPE           VARCHAR2(100 BYTE),
  BENCHMARK_THRESHOLD  NUMBER(3,2)
);

ROLLBACK
*/
truncate table INF_B_SC_STG_OC_SCORECARD_LOOKUP;

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (1, 'Admission Date', 'PCT_ADMITDT', '15', 'Inpatient and LTC', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (2, 'Admitting Diagnosis', 'PCT_DIAG_ADMIT', '85', 'Inpatient', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (3, 'Allowable Amount', 'PCT_AMTALLOW', '86', 'All Claim Types', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (4, 'Billed Charge', 'PCT_AMTBILL', '60', 'All Claim Types', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (5, 'Billing Provider ID', 'PCT_BILL_PROV_ID', '58', 'All Claim Types', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (6, 'Billing Provider ID Type', 'PCT_BILL_PROV_ID_TYP', '93', 'All Claim Types', 
    1);
/*
xxInsert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (7, 'Billing Provider NPI', 'PCT_BILL_NPI', '58, 93', 'Inpatient, Outpatient, Professional, and LTC', 
    0.99);
*/
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (8, 'Claim Category', 'PCT_CLAIMCAT', '2', 'All Claim Types', 
    0.99);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (9, 'Date Script Written', 'PCT_SCRIPT_WRITTEN', '82', 'Pharmacy (prescriptions only, not OTC)', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (10, 'Discharge Date', 'PCT_DISCHARGEDT', '16', 'Inpatient', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (11, 'Dispense as Written Indicator', 'PCT_DISPENSE', '41', 'Pharmacy (prescriptions only, not OTC)', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (12, 'Dispensing Fee', 'PCT_FEE', '67', 'Pharmacy (prescriptions only, not OTC)', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (13, 'From Service Date', 'PCT_DOS_FROM', '17', 'All Claim Types', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (14, 'ICD Version Qualifier', 'PCT_ICD_VERSION', '193', 'Inpatient, Outpatient, Professional, and LTC', 
    0.99);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (15, 'NDC Number', 'PCT_NDC', '37', 'Pharmacy (prescriptions only, not OTC and not compounded)', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (16, 'Net Payment', 'PCT_AMTPAY', '68', 'All Claim Types', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (17, 'New Member ID', 'PCT_ID_MEDICAID', '76', 'All Claim Types', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (18, 'Patient Discharge Status', 'PCT_PATIENT_STATUS', '34', 'Inpatient and Outpatient', 
    0.98);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (19, 'Place of Service', 'PCT_POS_CODE', '32', 'Inpatient, Outpatient, Professional, and LTC', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (20, 'Prescribing Prov. ID', 'PCT_PRESCRIBE_PROV_ID', '81', 'Pharmacy (prescriptions only, not OTC)', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (21, 'Prescribing Prov. ID Type', 'PCT_PRES_PROV_ID_TYP', '94', 'Pharmacy (prescriptions only, not OTC)', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (22, 'Prescription Number', 'PCT_SCRIPT', '198', 'Pharmacy (prescriptions only, not OTC)', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (23, 'Primary Diagnosis', 'PCT_PRIMARY_DIAG', '19', 'Inpatient, Outpatient, Professional, and LTC', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (24, 'Procedure Code Prof_M', 'PCT_PROC_CODE_M', '26', 'Professional', 
    0.99);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (25, 'Quantity', 'PCT_QTY_UNIT_BILL', '36', 'Non Pharmacy', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (26, 'Record Indicator', 'PCT_RECIND', '4', 'All Claim Types', 
    0.99);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (27, 'Refill Indicator', 'PCT_REFILL', '40', 'Pharmacy (prescriptions only, not OTC)', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (28, 'Revenue Code', 'PCT_REV_CODE', '31', 'Inpatient, Outpatient, and LTC', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (29, 'Service Category', 'PCT_SVC_CAT', '80', 'All Claim Types', 
    0.99);
/*
xxInsert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (30, 'Servicing Provider NPI', 'PCT_SERV_NPI', '50, 51', 'Inpatient, Outpatient, Professional, and LTC', 
    0.98);
*/

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (31, 'Servicing Provider ID', 'PCT_SERV_PROV_ID', '50', 'All Claim Types', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (32, 'Servicing Provider ID Type', 'PCT_SERV_PROV_ID_TYP', '51', 'All Claim Types', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (33, 'Servicing Provider Type', 'PCT_SERV_PROV_TYP', '55', 'All Claim Types', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (34, 'Source of Admission', 'PCT_ADMIT_SOURCE', '25', 'Inpatient and LTC', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (35, 'To Service Date', 'PCT_DOS_THRU', '18', 'All Claim Types', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (36, 'Type of Admission', 'PCT_ADMIT_TYPE', '24', 'Inpatient and LTC', 
    1);
Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (37, 'Place of Service', 'PCT_POS_TYPE', '33', 'Inpatient, Outpatient, Professional, and LTC', 
    1);
--------------------
--SCO 

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (38, 'Servicing Provider Specialty', 'PCT_SERV_PROV_SPEC', '56', 'All Claim Types', 
    1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (39, 'Billing Provider Specialty', 'PCT_BILL_PROV_SPEC', '', 'All Claim Types', 
    1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (40, 'Procedure Code Outpt', 'PCT_PROC_CODE_O', '26', 'Outpatient', 
    1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (41, 'Procedure Modifier DME', 'PCT_PROC_MOD_DME', '27', 'Professional', 
    1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (42, 'Procedure Modifier LabXray', 'PCT_PROC_MOD_LABXRAY', '27', 'Professional', 
    1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (43, 'Procedure Modifier Surgery Prof_M', 'PCT_PROC_MOD_SURGERYM', '27', 'Professional', 
    1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (44, 'Medicare Code', 'PCT_MEDICARE_CODE', '11', 'All Claim Types', 
    1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (45, 'Gross Payment Amount', 'PCT_AMT_GROSSPAY', '61', 'All Claim Types', 
    1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (7, 'Medicare Amount', 'PCT_AMT_PAYMCARE', '63', 'All Claim Types', 
    1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (30, 'Patient Pay Amount', 'PCT_PAT_PAYAMT', '124', 'All Claim Types', 
    1);

--------------------

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (46, 'Servicing Provider Last Name', 'PCT_SERV_NAM_LAST', '6', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (47, 'Billing Provider Last Name', 'PCT_BILL_NAM_LAST', '6', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (48, 'Servicing Provider Street Address', 'PCT_SERV_ADR_STRT', '8', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (49, 'Billing Provider Street Address', 'PCT_BILL_ADR_STRT', '8', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (50, 'Servicing Provider City Address', 'PCT_SERV_ADR_CITY', '9', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (51, 'Billing Provider City Address', 'PCT_BILL_ADR_CITY', '9', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (52, 'Servicing Provider State Address', 'PCT_SERV_ADR_STATE', '10', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (53, 'Billing Provider State Address', 'PCT_BILL_ADR_STATE', '10', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (54, 'Servicing Provider Zip Address', 'PCT_SERV_ADR_ZIP', '11', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (55, 'Billing Provider Zip Address', 'PCT_BILL_ADR_ZIP', '11', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (56, 'Servicing Provider Street Mailing Address', 'PCT_SERV_ADR_MAIL_STRT', '12', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (57, 'Billing Provider Street Mailing Address', 'PCT_BILL_ADR_MAIL_STRT', '12', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (58, 'Servicing Provider City Mailing Address', 'PCT_SERV_ADR_MAIL_CITY', '13', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (59, 'Billing Provider City Mailing Address', 'PCT_BILL_ADR_MAIL_CITY', '13', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (60, 'Servicing Provider State Mailing Address', 'PCT_SERV_ADR_MAIL_STATE', '14', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (61, 'Billing Provider State Mailing Address', 'PCT_BILL_ADR_MAIL_STATE', '14', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (62, 'Servicing Provider Zip Mailing Address', 'PCT_SERV_ADR_MAIL_ZIP', '15', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (63, 'Billing Provider Zip Mailing Address', 'PCT_BILL_ADR_MAIL_ZIP', '15', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (64, 'Servicing Provider Accepting New Patients', 'PCT_SERV_PANEL_OPEN', '23', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (65, 'Billing Provider Accepting New Patients', 'PCT_BILL_PANEL_OPEN', '23', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (66, 'Servicing Provider NPI', 'PCT_SERV_NPI_SCO', '26', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (67, 'Billing Provider NPI', 'PCT_BILL_NPI_SCO', '26', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (68, 'Servicing Tax ID', 'PCT_SERV_TAX_ID', '30', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (69, 'Billing Tax ID', 'PCT_BILL_TAX_ID', '30', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (70, 'Servicing Provider Primary Care Eligibility Ind', 'PCT_SERV_PC_ELIG_IND', '33', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (71, 'Billing Provider Primary Care Eligibility Ind', 'PCT_BILL_PC_ELIG_IND', '33', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (72, 'Servicing Provider APCD Organization ID', 'PCT_SERV_APCD_ORGID', '34', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (73, 'Billing Provider APCD Organization ID', 'PCT_BILL_APCD_ORGID', '34', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (74, 'Servicing Provider Bundle ID', 'PCT_SERV_PROV_BUNDLE_ID', '40', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (75, 'Billing Provider Bundle ID', 'PCT_BILL_PROV_BUNDLE_ID', '40', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (76, 'Servicing Provider Primary Address Location Indicator', 'PCT_SERV_IND_PRIM_ENC_PROV_LOC', '41', 'All Claim Types', 1);

Insert into INF_B_SC_STG_OC_SCORECARD_LOOKUP
   (ID, BENCHMARK, BENCHMARK_NAME, FIELD_ID, CLAIM_TYPE, 
    BENCHMARK_THRESHOLD)
 Values
   (77, 'Billing Provider Primary Address Location Indicator', 'PCT_BILL_IND_PRIM_ENC_PROV_LOC', '41', 'All Claim Types', 1);

COMMIT;

--select count(1) from INF_B_SC_STG_OC_SCORECARD_LOOKUP

select measure, benchmark
from INF_B_SC_STG_OC_REP_STEP2

select benchmark, benchmark_threshold
from INF_B_SC_STG_OC_SCORECARD_LOOKUP

--set the benchmarks
update INF_B_SC_STG_OC_SCORECARD_LOOKUP l
set l.benchmark_threshold = ( select to_number(substr(s.benchmark,1,2),'99')/100 from INF_B_SC_STG_OC_REP_STEP2 s where (l.FIELD_ID || ' ' || l.benchmark) = s.measure);

--do two manually
update INF_B_SC_STG_OC_SCORECARD_LOOKUP l
set l.benchmark_threshold = .98
where l.benchmark = 'Place of Service';

update INF_B_SC_STG_OC_SCORECARD_LOOKUP l
set l.benchmark_threshold = .98
where l.benchmark = 'Type of Admission';

COMMIT;

select s.measure
,s.benchmark
,to_number(substr(s.benchmark,1,2),'99')/100  
from INF_B_SC_STG_OC_REP_STEP2 s

select s.measure, s.benchmark, l.benchmark, l.benchmark_threshold, (l.FIELD_ID || ' ' || l.benchmark) comp
from INF_B_SC_STG_OC_SCORECARD_LOOKUP l
full join INF_B_SC_STG_OC_REP_STEP2 s ON (l.FIELD_ID || ' ' || l.benchmark) = s.measure
order by (l.FIELD_ID || ' ' || l.benchmark)


select l.benchmark, l.benchmark_threshold, (l.FIELD_ID || ' ' || l.benchmark) comp
from INF_B_SC_STG_OC_SCORECARD_LOOKUP l
order by (l.FIELD_ID || ' ' || l.benchmark)

