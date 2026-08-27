-- SCO SQL from Informatica
-- Includes Nicole's SQL and Provider SQL

CREATE TABLE MHTEAM.DWDQ.INF_B_SC_SCO_DOS_~MON_output~ 
AS
SELECT
TO_DATE('~ASOFDT_output~','YYYYMMDD') AS RUN_DATE, 
ENC.CDE_ENC_MCO,
MEM.ID_MEDICAID,
ENCATT.CDE_ENC_REC_IND,
ENCATT.DSC_ENC_REC_IND,
ENC.DOS_FROM_DT AS DOS_FROM,
ENC.DOS_TO_DT AS DOS_THRU,
ENC.ADMIT_DT,
ENC.DISCHARGE_DT,
ENC.DATE_SCRIPT_WRITTEN,
ENC.QTY_REFILL,
ENC.QTY_UNITS_BILLED,
ENC.RX_NUMBER,
ENC.AMT_NDC_PROFEE,
ENC.AMT_GROSS_PAID,
ENC.AMT_PAID_MCARE,
ENC.AMT_PAID PATIENT_PAY_AMOUNT,
ENC.ENCSRGGRP_SEQ,
DIAGGRP.CDE_DIAG_ADMIT,
DIAGGRP.DSC_DIAG_ADMIT,
CSA.CDE_PATIENT_STATUS,
CSA.DSC_PATIENT_STATUS,
DIAGGRP.CDE_DIAG_1 AS PRIMARY_DIAG,
DIAGGRP.DSC_DIAG_1 AS PRIMARY_DIAG_DESC, 
DIAGGRP.CDE_ICD_VERSION,
DIAGGRP.DIAGRP_SEQ,
CSA.CDE_ADMIT_TYPE,
CSA.DSC_ADMIT_TYPE,
CSA.CDE_ADMIT_SOURCE,
NCF.CDE_ENC_PROC AS PROC_CODE_ENC,
NCF.DSC_ENC_PROC AS PROC_CODE_ENC_DESC, 
PROC.CDE_PROC AS PROC_CODE,
PROC.DSC_PROC AS PROC_CODE_DESC,
MFR.CDE_PROC_MOD AS PROC_MODIFIER1,
MFR.DSC_PROC_MOD AS PROC_MODIFIER1_DESC, 
MFR.CDE_PROC_MOD_2 AS PROC_MODIFIER2,
MFR.DSC_PROC_MOD_2 AS PROC_MODIFIER2_DESC,
MFR.CDE_PROC_MOD_3 AS PROC_MODIFIER3,
MFR.DSC_PROC_MOD_3 AS PROC_MODIFIER3_DESC,
MFR.CDE_PROC_MOD_4 AS PROC_MODIFIER4,
MFR.DSC_PROC_MOD_4 AS PROC_MODIFIER4_DESC,
NCF.CDE_ENC_PROC_TYPE,
NCF.DSC_ENC_PROC_TYPE,
CSA.CDE_REVENUE,
CSA.DSC_REVENUE,
CSA.CDE_PLACE_OF_SERVICE,
CSA.DSC_PLACE_OF_SERVICE,
SUBSTR(CSA.CDE_PLACE_OF_SERVICE,2,2) AS PLACE_OF_SERVICE,
SUBSTR(CSA.CDE_PLACE_OF_SERVICE,1,1) AS PLACE_OF_SERVICE_TYPE,
CSA.CDE_PLACE_OF_SERVICE_ENC,
CSA.CDE_TYPE_OF_BILL,
CSA.CDE_TYPE_OF_BILL_ENC,
CSA.CDE_BILL_FREQ,
SVC_PROV.ID_PROVIDER AS SERV_PROV_ID,
SVC_PROV.ENC_PROV_ID AS ENC_SERV_PROV_ID,
SVC_PROV.DSC_ENC_PROV_ID_TYPE AS SERV_PROV_ID_TYPE,
SVC_PROV.ID_NPI AS SERV_NPI,
SVC_PROV.CDE_ENC_PROV_TYPE AS ENC_SERV_PROV_TYPE,
SVC_PROV.NAM_LAST AS SERV_PROV_LNAME,
SVC_PROV.ADR_STRT1 AS SERV_ADR_STREET1,
SVC_PROV.ADR_CITY AS SERV_ADR_CITY1,
SVC_PROV.ADR_STATE AS SERV_ADR_STATE1,
SVC_PROV.ADR_ZIP AS SERV_ADR_ZIP1,
SVC_PROV.ADR_MAIL_STRT1 AS SERV_ADR_MAIL_STREET1,
SVC_PROV.ADR_MAIL_CITY AS SERV_ADR_MAIL_CITY1,
SVC_PROV.ADR_MAIL_STATE AS SERV_ADR_MAIL_STATE1,
SVC_PROV.ADR_MAIL_ZIP AS SERV_ADR_MAIL_ZIP1,
SVC_PROV.NUM_TAX_ID AS SERV_TAX_ID,
SVC_PROV.IND_ENC_PANEL_OPEN AS SERV_PANEL_OPEN,
SVC_PROV.PRIMARY_CARE_ELIG_INDICATOR AS SERV_PC_ELIG_IND,
SVC_PROV.ENC_PROV_BUNDLE_ID AS SERV_PROV_BUNDLE_ID,
SVC_PROV.IND_PRIMARY_ENC_PROV_LOC AS SERV_IND_PRIMARY_ENC_PROV_LOC,
SVC_PROV.APCD_ORGID AS SERV_APCD_ORGID,
PROV.ID_PROVIDER AS BILL_PROV_ID,
PROV.ENC_PROV_ID AS ENC_BILL_PROV_ID,
PROV.DSC_ENC_PROV_ID_TYPE AS BILL_PROV_ID_TYPE,
PROV.ID_NPI AS BILL_NPI,
PROV.CDE_ENC_PROV_TYPE AS ENC_BILL_PROV_TYPE,
PROV.NAM_LAST AS BILL_PROV_LNAME,
PROV.ADR_STRT1 AS BILL_ADR_STREET1,
PROV.ADR_CITY AS BILL_ADR_CITY1,
PROV.ADR_STATE AS BILL_ADR_STATE1,
PROV.ADR_ZIP AS BILL_ADR_ZIP1,
PROV.ADR_MAIL_STRT1 AS BILL_ADR_MAIL_STREET1,
PROV.ADR_MAIL_CITY AS BILL_ADR_MAIL_CITY1,
PROV.ADR_MAIL_STATE AS BILL_ADR_MAIL_STATE1,
PROV.ADR_MAIL_ZIP AS BILL_ADR_MAIL_ZIP1,
PROV.NUM_TAX_ID AS BILL_TAX_ID,
PROV.IND_ENC_PANEL_OPEN AS BILL_PANEL_OPEN,
PROV.PRIMARY_CARE_ELIG_INDICATOR AS BILL_PC_ELIG_IND,
PROV.ENC_PROV_BUNDLE_ID AS BILL_PROV_BUNDLE_ID,
PROV.IND_PRIMARY_ENC_PROV_LOC AS BILL_IND_PRIMARY_ENC_PROV_LOC,
PROV.APCD_ORGID AS BILL_APCD_ORGID,
PRS_PROV.ID_PROVIDER AS PRES_PROV_ID,
PRS_PROV.ENC_PROV_ID AS ENC_PRES_PROV_ID,
PRS_PROV.DSC_ENC_PROV_ID_TYPE AS PRES_PROV_ID_TYPE,
NCF.CDE_ENC_PROV_SPEC AS SERV_PROV_SPECIALTY,
BILL_SPEC.BILL_PROV_SPECIALTY,
BILL_SPEC.DSC_BILL_PROV_SPECIALTY,
DRG.CDE_DRUG_CLASS,
DRG.CDE_NDC,
ENC.CDE_CLM_TYPE AS CLAIM_TYPE,
ENC.ENC_CLAIM_NO,
ENC.ENC_CLAIM_SUFFIX,
ENC.AMT_PAID, 
ENC.AMT_BILLED,
ENC.AMT_ALLOWED, 
ENC.CDE_CLM_DISPOSITION,
ENCATT.CDE_ENC_MEDICARE,
ENCATT.CDE_ENC_DISP_AS_WRTN,
ENCATT.DSC_ENC_DISP_AS_WRTN,
ENCATT.CDE_ENC_CLAIM_CAT,
ENCATT.DSC_ENC_CLAIM_CAT,
ENCATT.CDE_ENC_SVC_CAT,
ENCATT.DSC_ENC_SVC_CAT,
ENCATT.IND_ENC_COMPOUND
FROM MHDWPROD.NW.NW_ENCOUNTER_HIST ENC
LEFT OUTER JOIN MHDWPROD.NW.NW_ENC_ATTRIBUTE ENCATT ON ENC.ATTRENC_SEQ = ENCATT.ATTRENC_SEQ
LEFT OUTER JOIN MHDWPROD.NW.NW_MEMBER MEM ON ENC.MEM_SEQ = MEM.MEM_SEQ
LEFT OUTER JOIN MHDWPROD.NW.NW_DIAGNOSIS_GROUP DIAGGRP ON ENC.DIAGRP_SEQ = DIAGGRP.DIAGRP_SEQ
LEFT OUTER JOIN MHDWPROD.NW.NW_CLAIM_SERVICE_ATTRIBUTE CSA ON ENC.ATTRSRV_SEQ = CSA.ATTRSRV_SEQ
LEFT OUTER JOIN MHDWPROD.NW.NW_PROCEDURE PROC ON ENC.PROC_SEQ = PROC.PROC_SEQ
LEFT OUTER JOIN MHDWPROD.NW.NW_PROCEDURE_MFR_GROUP MFR ON ENC.PROCMFRGRP_SEQ= MFR.PROCMFRGRP_SEQ
LEFT OUTER JOIN MHDWPROD.NW.NW_DRUG DRG ON ENC.DRUG_SEQ = DRG.DRUG_SEQ
LEFT OUTER JOIN MHDWPROD.NW.NW_ENC_PROVIDER PROV ON ENC.BILL_ENCPRV_SEQ = PROV.ENCPRV_SEQ
LEFT OUTER JOIN MHDWPROD.NW.NW_ENC_PROVIDER SVC_PROV ON ENC.SRV_ENCPRV_SEQ = SVC_PROV.ENCPRV_SEQ
LEFT OUTER JOIN         
(select *
from(
SELECT distinct enc_prov_id,cde_enc_mco,cde_enc_prov_spec bill_prov_specialty,dsc_enc_prov_spec dsc_bill_prov_specialty,
case when lag(enc_prov_id) over (partition by enc_prov_id, cde_enc_mco order by enc_prov_id,cde_enc_mco,cde_enc_prov_spec desc) is null then 1
     else 0
end as FirstRecord
FROM MHDWPROD.NW.NW_ENC_PROVIDER_SPEC
) where firstrecord=1 --picking one specialty, but updating code to order by 'desc' so that picking the non-null specialty
)bill_spec on prov.enc_prov_id = bill_spec.enc_prov_id and prov.cde_enc_mco = bill_spec.cde_enc_mco
LEFT OUTER JOIN MHDWPROD.NW.NW_ENC_PROVIDER REF_PROV ON ENC.REF_ENCPRV_SEQ = REF_PROV.ENCPRV_SEQ
LEFT OUTER JOIN MHDWPROD.NW.NW_ENC_PROVIDER PRS_PROV ON ENC.PRS_ENCPRV_SEQ = PRS_PROV.ENCPRV_SEQ
LEFT OUTER JOIN MHDWPROD.NW.NW_ENC_NONCONF_ATTRIBUTE NCF ON NCF.ATTRENC_NC_SEQ = ENC.ATTRENC_NC_SEQ
WHERE  ENC.DOS_FROM_DT BETWEEN TO_DATE('~MONS_output~','YYYYMMDD')
--        AND ((TO_DATE('~MONS_output~', 'YYYYMMDD') + INTERVAL '~RUNMNTHS_output~' MONTH ) -1)
          AND ADD_MONTHS(TO_DATE('~MONS_output~','YYYYMMDD'),(~RUNMNTHS_output~)) -1
AND  ENC.REMIT_THRU_DT = TO_DATE('99991231','YYYYMMDD')
AND TO_DATE('~ASOFDT_output~','YYYYMMDD') BETWEEN ENC.WH_FROM_DT AND ENC.WH_THRU_DT 
AND ENC.CDE_CLM_DISPOSITION <> 'V' 
AND ENC.IND_OFFSET = 'N' 
AND ENC.CDE_ENC_MCO IN('CCA','UHC','NAV','SWH','TFT','BHP','MGS')
--LIMIT 150
;

CREATE TABLE MHTEAM.DWDQ.INF_B_SC_~PN~_FIELD_REX_~MON~
         AS
         select   FIRSTX.CDE_ENC_MCO,
         SUM(FIRSTX.ID_MEDICAID1) AS ID_MEDICAID2,
         SUM(FIRSTX.DOS_FROM1) AS DOS_FROM2,
         SUM(FIRSTX.DOS_THRU1) AS DOS_THRU2,
         SUM(FIRSTX.SERV_PROV_ID1) AS SERV_PROV_ID2,
         SUM(FIRSTX.SERV_PROV_ID_TYP1) AS SERV_PROV_ID_TYP2,
         SUM(FIRSTX.SERV_PROV_SPEC1) AS SERV_PROV_SPEC2,
         SUM(FIRSTX.BILL_PROV_SPEC1) AS BILL_PROV_SPEC2,
         SUM(FIRSTX.BILL_PROV_ID1) AS BILL_PROV_ID2,
         SUM(FIRSTX.BILL_PROV_ID_TYP1) AS BILL_PROV_ID_TYP2,
         SUM(FIRSTX.PRESCRIBE_PROV1) AS PRESCRIBE_PROV2,
         SUM(FIRSTX.PRES_PROV_ID_TYP1) AS PRES_PROV_ID_TYP2,
         SUM(FIRSTX.PRIMARY_DIAG1) AS PRIMARY_DIAG2,
         SUM(FIRSTX.CDE_ICD_VERSION1) AS CDE_ICD_VERSION2,
         SUM(FIRSTX.PROC_CODE_M) AS PROC_CODE_M2,
         SUM(FIRSTX.PROC_CODE_O) AS PROC_CODE_O2,
         SUM(FIRSTX.PROC_MOD_DME) AS PROC_MOD_DME2,
         SUM(FIRSTX.PROC_MOD_LABXRAY) AS PROC_MOD_LABXRAY2,
         SUM(FIRSTX.PROC_MOD_SURGERYM) AS PROC_MOD_SURGERYM2,
         SUM(FIRSTX.QTY_UNITS_BILLED1) AS QTY_UNIT_BILL2,
         SUM(FIRSTX.SCRIPTWRIT1) AS SCRIPTWRIT2,
         SUM(FIRSTX.REFILL1) AS REFILL2,
         SUM(FIRSTX.DISPENSE1) AS DISPENSE2,
         SUM(FIRSTX.SCRIPT1) AS SCRIPT2,
         SUM(FIRSTX.FEE1) AS FEE2,
         SUM(FIRSTX.NDC1) AS NDC2,
         SUM(FIRSTX.CLAIMCAT1) AS CLAIMCAT2,
         SUM(FIRSTX.RECIND1) AS RECIND2,
         SUM(FIRSTX.AMTBILL1) AS AMTBILL2,
         SUM(FIRSTX.AMTPAY1) AS AMTPAY2,
         SUM(FIRSTX.AMTALLOW1) AS AMTALLOW2,
         SUM(FIRSTX.ADMITDT1) AS ADMITDT2,
         SUM(FIRSTX.DISCHARGE_DT1) AS DISCHARGEDT2,
         SUM(FIRSTX.CDE_DIAG_ADMIT1) AS CDE_DIAG_ADMIT2,
         SUM(FIRSTX.CDE_PATIENT_STATUS1) AS CDE_PATIENT_STATUS2,
         SUM(FIRSTX.CDE_ADMIT_TYPE1) AS CDE_ADMIT_TYPE2,
         SUM(FIRSTX.CDE_ADMIT_SOURCE1) AS CDE_ADMIT_SOURCE2,
         SUM(FIRSTX.REV_CODE1) AS REV_CODE2,
         SUM(FIRSTX.POS_CODE1) AS POS_CODE2,
         SUM(FIRSTX.POS_TYPE1) AS POS_TYPE2,
         SUM(FIRSTX.MEDICARE_CODE1) AS MEDICARE_CODE2,
         SUM(FIRSTX.AMTGROSSPAY1) AS AMTGROSSPAY2,
         SUM(FIRSTX.AMTPAYMCARE1) AS AMTPAYMCARE2,
         SUM(FIRSTX.SVCCAT1) AS SVCCAT2,
         SUM(FIRSTX.SERV_PROV_TYP1) AS SERV_PROV_TYP2,
         SUM(FIRSTX.PATPAYAMT1) AS PATPAYAMT2,
         sum(firstx.serv_nam_last1) as serv_nam_last2,
         sum(firstx.bill_nam_last1) as bill_nam_last2, 
         sum(firstx.serv_adr_strt1) as serv_adr_strt2,
         sum(firstx.bill_adr_strt1) as bill_adr_strt2, 
         sum(firstx.serv_adr_city1) as serv_adr_city2,
         sum(firstx.bill_adr_city1) as bill_adr_city2,
         sum(firstx.serv_adr_state1) as serv_adr_state2,
         sum(firstx.bill_adr_state1) as bill_adr_state2,
         sum(firstx.serv_adr_zip1) as serv_adr_zip2,
         sum(firstx.bill_adr_zip1) as bill_adr_zip2,
         sum(firstx.serv_adr_mail_strt1) as serv_adr_mail_strt2,
         sum(firstx.bill_adr_mail_strt1) as bill_adr_mail_strt2, 
         sum(firstx.serv_adr_mail_city1) as serv_adr_mail_city2,
         sum(firstx.bill_adr_mail_city1) as bill_adr_mail_city2,
         sum(firstx.serv_adr_mail_state1) as serv_adr_mail_state2,
         sum(firstx.bill_adr_mail_state1) as bill_adr_mail_state2,
         sum(firstx.serv_adr_mail_zip1) as serv_adr_mail_zip2,
         sum(firstx.bill_adr_mail_zip1) as bill_adr_mail_zip2,
         sum(firstx.serv_panel_open1) as serv_panel_open2,
         sum(firstx.bill_panel_open1) as bill_panel_open2,      
         sum(firstx.serv_npi1) as serv_npi2,
         sum(firstx.bill_npi1) as bill_npi2,
         sum(firstx.serv_tax_id1) as serv_tax_id2,
         sum(firstx.bill_tax_id1) as bill_tax_id2,
         sum(firstx.serv_pc_elig_ind1) as serv_pc_elig_ind2,
         sum(firstx.bill_pc_elig_ind1) as bill_pc_elig_ind2,
         sum(firstx.serv_apcd_orgid1) as serv_apcd_orgid2,
         sum(firstx.bill_apcd_orgid1) as bill_apcd_orgid2,
         sum(firstx.serv_prov_bundle_id1) as serv_prov_bundle_id2,
         sum(firstx.bill_prov_bundle_id1) as bill_prov_bundle_id2,
         sum(firstx.serv_ind_primary_enc_prov_loc1) as serv_ind_primary_enc_prov_loc2,
         sum(firstx.bill_ind_primary_enc_prov_loc1) as bill_ind_primary_enc_prov_loc2
         FROM
         (SELECT
         CDE_ENC_MCO,
         /* CLAIM CATEGORY - #2 */
         CASE WHEN SUBSTR(MX.DSC_ENC_CLAIM_CAT,1,1) IN ('1','2','3','4','5','6','7') THEN 1 ELSE 0 END AS CLAIMCAT1,
         /* RECORD INDICATOR - #4 */
         /* JPL 20230927, include 8 and 9)*/
         CASE WHEN SUBSTR(MX.DSC_ENC_REC_IND,1,1) IN ('0','1','2','3','4','5','6','7','8','9') THEN 1 ELSE 0 END AS RECIND1,
         /* FROM DOS - Field 17 */
         case when MX.DOS_FROM IS NOT NULL THEN 1 else 0 end DOS_FROM1 ,
         /* THRU DOS - Field 18 */
         case when MX.DOS_THRU IS NOT NULL then 1 else 0 end DOS_THRU1 ,
         /* PRIMARY DIAGNOSIS */
         case when CDE_ENC_REC_IND <> '0' AND CLAIM_TYPE IN('I','M','O','L') AND primary_diag not in ('+','-', ' ') then 1 else 0 end as PRIMARY_DIAG1,
         /* PROC_CODE: claim type M */
         case when CDE_ENC_REC_IND <> '0' AND claim_type in('M') and (proc_code not in(' ' , '-' , '+' , '#') or
         (cde_enc_proc_type ='7' and proc_code_enc not in(' ' , '-' , '+' , '#' )))
         then 1 else 0 end as proc_code_M,
         /* PROC_CODE: claim type O */
         case when CDE_ENC_REC_IND <> '0' AND ((claim_type in('O') and
         (proc_code not in(' ','-','+','#') or ((cde_revenue between 250 and 259) or (cde_revenue = 260) or  (cde_revenue between 262 and 279) or
         (cde_revenue between 370 and 372) or (cde_revenue = 374) or (cde_revenue = 379) or (cde_revenue = 710) or
         (cde_revenue = 839) or (cde_revenue = 902) or (cde_revenue = 946) or (cde_revenue = 947) or (cde_revenue = 961) or
         (cde_revenue = 962) or (cde_revenue = 963) or (cde_revenue = 973) or (cde_revenue = 974) or (cde_revenue = 975) or
         (cde_revenue = 981) or (cde_revenue = 982) or (cde_revenue = 983) or (cde_revenue = 988))))  or
         (claim_type in ('O') and cde_enc_proc_type ='7' and proc_code_enc not in(' ' , '-' , '+' , '#' )))
         then 1 else 0 end as proc_code_O,
         
         /* PROC MODIFIER claim type M (DME) Janes mods */
         /*new: updated 2.14.2019*/
         /*new update 11.10.2022 replace RR,NU,UE with NW_SUP_CODE_REF lookup*/
         case when CDE_ENC_REC_IND <> '0' AND claim_type in('M') and ((substr(proc_code,1,1) in('E','K') and 
         proc_code not in('E0241','E0242','E0243','E0700') and proc_code not in('K0739','E0244','E0245','E0246')) or
         (cde_enc_proc_type ='7' and substr(proc_code_enc,1,1) in('E','K') and 
         proc_code_enc not in('E0241','E0242','E0243','E0700') and proc_code_enc not in('K0739','E0244','E0245','E0246'))) and
         (proc_modifier1 in(select CDE_CHAR from MHDWPROD.NW.NW_SUP_CODE_REF where CDE_GROUP = 'CDE_PROC_MOD' and CDE_CHAR NOT IN ('#','**','+','-')) or 
		  proc_modifier2 in(select CDE_CHAR from MHDWPROD.NW.NW_SUP_CODE_REF where CDE_GROUP = 'CDE_PROC_MOD' and CDE_CHAR NOT IN ('#','**','+','-')) or 
		  proc_modifier3 in(select CDE_CHAR from MHDWPROD.NW.NW_SUP_CODE_REF where CDE_GROUP = 'CDE_PROC_MOD' and CDE_CHAR NOT IN ('#','**','+','-')) or 
		  proc_modifier4 in(select CDE_CHAR from MHDWPROD.NW.NW_SUP_CODE_REF where CDE_GROUP = 'CDE_PROC_MOD' and CDE_CHAR NOT IN ('#','**','+','-')))
         then 1 else 0 end as proc_mod_DME,
         /*old*/
         /*case when CDE_ENC_REC_IND <> '0' AND claim_type in('M') and (substr(proc_code,1,1) in('E','K')  or
         (cde_enc_proc_type ='7' and substr(proc_code_enc,1,1) in('E','K'))) and
         (proc_modifier1 in('RR','NU','UE') or proc_modifier2 in('RR','NU','UE') or proc_modifier3 in('RR','NU','UE') or proc_modifier4 in('RR','NU','UE'))
         then 1 else 0 end as proc_mod_DME,*/
         /* PROC MODIFIER claim type M (lab/xray) all mods */
         /*new: updated 8.27.18*/
         case when CDE_ENC_REC_IND <> '0' AND claim_type in('M') and (cde_place_of_service_enc not in('11') AND substr(cde_type_of_bill_enc,1,2) not in('11'))
         and (substr(proc_code,1,1) in('7')  or (cde_enc_proc_type ='7' and substr(proc_code_enc,1,1) in('7'))) and
         (proc_modifier1 not in('+',' ','-') or proc_modifier2 not in('+',' ','-') or proc_modifier3 not in('+',' ','-') or proc_modifier4 not in('+',' ','-'))
         then 1 else 0 end as proc_mod_LABXRAY,
         /*old*/
         /*case when CDE_ENC_REC_IND <> '0' AND claim_type in('M') and (substr(proc_code,1,1) in('7')  or
         (cde_enc_proc_type ='7' and substr(proc_code_enc,1,1) in('7'))) and
         (proc_modifier1 not in('+',' ','-') or proc_modifier2 not in('+',' ','-') or proc_modifier3 not in('+',' ','-') or proc_modifier4 not in('+',' ','-'))
         then 1 else 0 end as proc_mod_LABXRAY,*/
         /* PROC MODIFIER claim type M (surgery) all mods */
         case when cde_enc_rec_ind <> '0' and claim_type in('M') and
         ((proc_code between '10021' and '69990' and substr(proc_code,5,1) in('0','1','2','3','4','5','6','7','8','9') and proc_code_desc not in ('Unknown','N/A')) or
         (cde_enc_proc_type ='7' and proc_code_enc between '10021' and '69990' and substr(proc_code_enc,5,1) in('0','1','2','3','4','5','6','7','8','9') and
         proc_code_enc_desc not in('Unknown','N/A'))) and
         (proc_modifier1 not in('+',' ','-') or proc_modifier2 not in('+',' ','-') or proc_modifier3 not in('+',' ','-') or proc_modifier4 not in('+',' ','-'))
         then 1 else 0 end as proc_mod_SURGERYM,
         /* QTY UNITS BILLED */
         case when CLAIM_TYPE <> 'P' and qty_units_billed is not null then 1 else 0 end as QTY_UNITS_BILLED1, /*updated 6.26.18*/
         /* NET AMOUNT PAID - #68 */
         CASE WHEN AMT_PAID >=0 THEN 1 ELSE 0 END AS AMTPAY1,
         /* MEMBER ID - Field 76*/
         case when substr(MX.ID_MEDICAID,1,1) = '1' then 1 else 0 end ID_MEDICAID1,
         /* MEDICARE CODE updated to include 4-7 6.18.19*/
         case when cde_enc_medicare in('0','1','2','3','4','5','6','7') then 1 else 0 end MEDICARE_CODE1,
         /* REVENUE CODE */
         case when CLAIM_TYPE IN('I','O','L') AND substr(dsc_revenue,1,1) in ('0','1','2','3','4','5','6','7','8','9') and cde_enc_rec_ind <> '0'
         then 1 else 0 end as rev_code1,
         /*updated POS and POS type evaluation b/c of DW change in the storage of this data 6.8.2018*/
         /* PLACE OF SERVICE */
         /*case when CLAIM_TYPE NOT IN('P','D') AND SUBSTR(place_of_service,1,1) IN ('0','1','2','3','4','5','6','7','8','9') and
         SUBSTR(place_of_service,2,1) IN ('0','1','2','3','4','5','6','7','8','9') THEN 1 else 0 end as pos_code1,
         */
         /* PLACE OF SERVICE TYPE */  /*updated to remove cross check against claim cat Per Jane 2.20.18 */
         /*case when claim_type not in('P','D') and substr(cde_place_of_service,1,1) IN ('1','2')
         THEN 1 else 0 end as pos_type1,                                                                                    
         */
         /* PLACE OF SERVICE (updated)*/
         case when CLAIM_TYPE NOT IN('P','D') AND
         ( (substr(cde_place_of_service_enc,1,1) in('0','1','2','3','4','5','6','7','8','9') and
         substr(cde_place_of_service_enc,2,1) in('0','1','2','3','4','5','6','7','8','9'))
         or
         (substr(cde_type_of_bill_enc,1,1) in('0','1','2','3','4','5','6','7','8','9') and
         substr(cde_type_of_bill_enc,2,1) in('0','1','2','3','4','5','6','7','8','9'))) then 1 else 0 end as pos_code1,
         /* PLACE OF SERVICE TYPE (updated)*/
         case when CLAIM_TYPE NOT IN('P','D') AND
         ((cde_enc_claim_cat in('2','3','4','5') and
         substr(cde_place_of_service_enc,1,1) in('0','1','2','3','4','5','6','7','8','9') and
         substr(cde_place_of_service_enc,2,1) in('0','1','2','3','4','5','6','7','8','9'))
         or
         (cde_enc_claim_cat in('1','6') and
         substr(cde_type_of_bill_enc,1,1) in('0','1','2','3','4','5','6','7','8','9') and
         substr(cde_type_of_bill_enc,2,1) in('0','1','2','3','4','5','6','7','8','9'))) then 1 else 0 end as pos_type1,
         /* AMOUNT BILLED - #60 */
         CASE WHEN AMT_BILLED >=0 THEN 1 ELSE 0 END AS AMTBILL1,
         /* AMOUNT GROSS PAY */
         CASE WHEN AMT_GROSS_PAID >= 0 THEN 1 ELSE 0 END AS AMTGROSSPAY1,
         /* AMOUNT PAY MEDICARE */
         CASE WHEN AMT_PAID_MCARE >= 0 THEN 1 ELSE 0 END AS AMTPAYMCARE1,
         /* SERVICE CATEGORY */
         CASE WHEN CDE_ENC_SVC_CAT not in(' ','-','+','#') then 1 else 0 end as SVCCAT1,
         /* AMOUNT ALLOWED - #86 */
         CASE WHEN AMT_ALLOWED >=0 THEN 1 ELSE 0 END AS AMTALLOW1,
         /* CDE_ICD_VERSION */
         case when CDE_ENC_REC_IND <> '0' AND CLAIM_TYPE IN('I','M','O','L') AND cde_icd_version in('9','10')  and (ENCSRGGRP_SEQ>0 or diagrp_seq>0)
         then 1 else 0 end as CDE_ICD_VERSION1,
         /* ADMISSION DATE */
         /*CASE WHEN CLAIM_TYPE IN('I','L') AND ADMIT_DT IS NOT NULL THEN 1 ELSE 0 END ADMITDT1,*/
         /*Note: only M claims have '01JAN1900' values, so this does not affect results*/
         case when claim_type IN('I','L') and
         (admit_dt is not null  and admit_dt != to_date('01JAN1900','DDMONYYYY')) and
         (admit_dt <= discharge_dt or discharge_dt is null)
         THEN 1 ELSE 0 END AS ADMITDT1,
         /* DISCHARGE DATE */
         /*NT edit 8.14.18*/
         case when (CLAIM_TYPE='I' AND substr(cde_type_of_bill_enc,1,2) <> '21' and SUBSTR(DSC_PATIENT_STATUS,1,2) NOT BETWEEN '30' AND '39')
         AND (MX.DISCHARGE_DT IS NOT NULL and discharge_dt >= admit_dt) THEN 1 else 0 end DISCHARGE_DT1,
         /*old*/
         /*case when (CLAIM_TYPE='I' AND cde_place_of_service <> '221' and SUBSTR(DSC_PATIENT_STATUS,1,2) NOT BETWEEN '30' AND '39')
         AND (DISCHARGE_DT IS NOT NULL and discharge_dt >= admit_dt) THEN 1 else 0 end DISCHARGE_DT1,*/
         /* TYPE OF ADMISSION */
         case when CLAIM_TYPE IN('I','L') AND cde_admit_type in ('1','2','3','4','5','6','7','8','9') then 1 else 0 end as cde_admit_type1,
         /* NDC CODE - #37 */
         /* Only drugs not compounded 2=No, 1=Yes */
         CASE WHEN claim_type='P' AND CDE_DRUG_CLASS='F' AND IND_ENC_COMPOUND='2' AND CDE_NDC NOT IN (' ','-','+','#')
         THEN 1 ELSE 0 END AS NDC1,
         /*  SERVICING PROVIDER ID - Field 50*/
         CASE WHEN ENC_SERV_PROV_ID NOT IN (' ','-','+','#') THEN 1 else 0
         END SERV_PROV_ID1,
         /* SERVICING PROVIDER ID TYPE - Field 51 */
         case when substr(SERV_PROV_ID_TYPE,1,1)  IN ('1','6','9')  then 1 else 0 end SERV_PROV_ID_TYP1 ,
         /* SERVICING PROVIDER TYPE */
         CASE WHEN ENC_SERV_PROV_TYPE NOT IN (' ','-','+','#') THEN 1 else 0 END SERV_PROV_TYP1,
         /* SERVICING SPECIALTY */
         CASE WHEN SERV_PROV_SPECIALTY NOT IN (' ','-','+','#') THEN 1 else 0 END SERV_PROV_SPEC1,
         /* BILLING SPECIALTY */
         CASE WHEN BILL_PROV_SPECIALTY NOT IN (' ','-','+','#') THEN 1 ELSE 0 END AS BILL_PROV_SPEC1,
         /* BILLING PROVIDER ID - Field 58*/
         CASE WHEN ENC_BILL_PROV_ID NOT IN (' ','-','+','#') THEN 1 ELSE 0 END BILL_PROV_ID1,
         /* BILLING PROVIDER ID TYPE - Field 93 */
         case when substr(BILL_PROV_ID_TYPE,1,1)  IN ('1','6','9')  then 1 else 0 end BILL_PROV_ID_TYP1 ,
         /* PATIENT DISCHARGE STATUS */
         case when CLAIM_TYPE IN('I','O') AND cde_patient_status not in ('+', '-', ' ') then 1 else 0 end as CDE_PATIENT_STATUS1,
         /* ADMITTING DIAGNOSIS */
         /*NT edit 8.14.18*/
         case when CLAIM_TYPE IN('I') AND substr(cde_type_of_bill_enc,1,2) not in('12','22','42','62','81','82') AND CDE_DIAG_ADMIT not IN ('+','-', ' ')
         THEN 1 else 0 END CDE_DIAG_ADMIT1,
         /*old*/
         /*case when CLAIM_TYPE IN('I') AND cde_place_of_service not in('212','222','242','262','281','282') AND CDE_DIAG_ADMIT not IN ('+','-', ' ')
         THEN 1 else 0 END CDE_DIAG_ADMIT1,*/
         /* PATIENT PAY AMOUNT*/
         CASE WHEN PATIENT_PAY_AMOUNT >=0 THEN 1 ELSE 0 END AS PATPAYAMT1,
         /* SOURCE OF ADMISSION */
         case when CLAIM_TYPE IN('I','L') AND cde_admit_source  in ('1','2','3','4','5','6','7','8','9','A','B','C','D','E','F') then 1 else 0 end as cde_admit_source1,
         /* PRESCRIBING PROVIDER ID - ON PHARM CLAIMS ONLY - Field 81 */
         CASE WHEN CLAIM_TYPE = 'P' AND CDE_DRUG_CLASS='F' AND ENC_PRES_PROV_ID NOT IN ('+','-',' ') THEN 1
         else 0
         END PRESCRIBE_PROV1,
         /* PRESCRIBING PROVIDER ID TYPE - ON PHARM CLAIMS ONLY - Field 95 */
         case when CLAIM_TYPE='P' AND CDE_DRUG_CLASS='F' AND substr(MX.PRES_PROV_ID_TYPE,1,1) In ('1','6','8') then 1
         else 0
         END PRES_PROV_ID_TYP1,
         /* REFILL INDICATOR - Field 40 */
         case when MX.claim_type='P' AND CDE_DRUG_CLASS='F' AND MX.QTY_REFILL >=0 THEN 1 ELSE 0 END AS REFILL1,
         /* DISPENSE AS WRITTEN - FIELD 41 */
         CASE WHEN MX.claim_type='P' AND CDE_DRUG_CLASS='F' AND
         SUBSTR(MX.DSC_ENC_DISP_AS_WRTN,1,1) IN('0','1','2','3','4','5','6','7','8','9')
         THEN 1 ELSE 0 END AS DISPENSE1,
         /* DISPENSING FEE - #67 */
         CASE WHEN MX.claim_type='P' AND CDE_DRUG_CLASS='F' AND MX.AMT_NDC_PROFEE IS NOT NULL THEN 1 ELSE 0 END AS FEE1,
         /* DATE SCRIPT WRITTEN - Field 82*/
         case when MX.claim_type='P' AND CDE_DRUG_CLASS='F' AND MX.DATE_SCRIPT_WRITTEN IS NOT NULL
         then 1 else 0 end as scriptwrit1,
         /* PRESCRIPTION NUMBER - #198 */
         CASE WHEN MX.claim_type='P' AND CDE_DRUG_CLASS='F' AND MX.RX_NUMBER IS NOT NULL THEN 1 ELSE 0 END AS SCRIPT1,

         case when serv_prov_lname not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as serv_nam_last1,
         case when bill_prov_lname not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as bill_nam_last1,
         case when serv_adr_street1 not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as serv_adr_strt1,
         case when bill_adr_street1 not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as bill_adr_strt1,
         case when serv_adr_city1 not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as serv_adr_city1,
         case when bill_adr_city1 not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as bill_adr_city1,
         case when serv_adr_state1 not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as serv_adr_state1,
         case when bill_adr_state1 not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as bill_adr_state1,
         case when serv_adr_zip1 not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as serv_adr_zip1,
         case when bill_adr_zip1 not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as bill_adr_zip1,
         case when serv_adr_mail_street1 not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as serv_adr_mail_strt1,
         case when bill_adr_mail_street1 not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as bill_adr_mail_strt1,
         case when serv_adr_mail_city1 not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as serv_adr_mail_city1,
         case when bill_adr_mail_city1 not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as bill_adr_mail_city1,
         case when serv_adr_mail_state1 not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as serv_adr_mail_state1,
         case when bill_adr_mail_state1 not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as bill_adr_mail_state1,
         case when serv_adr_mail_zip1 not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as serv_adr_mail_zip1,
         case when bill_adr_mail_zip1 not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as bill_adr_mail_zip1,
         case when serv_panel_open in('1','2') then 1 else 0 end as serv_panel_open1,
         case when bill_panel_open in('1','2') then 1 else 0 end as bill_panel_open1,
         case when serv_npi not in(' ','-','+','#','N/A','Unknown','(null)','0','000000000','0000000000') then 1 else 0 end as serv_npi1,
         case when bill_npi not in(' ','-','+','#','N/A','Unknown','(null)','0','000000000','0000000000') then 1 else 0 end as bill_npi1,
         case when serv_tax_id not in(' ','-','+','#','N/A','Unknown','.','000000000') and 
              substr(replace(serv_tax_id,'-',''),9,1) in('0','1','2','3','4','5','6','7','8','9') then 1 else 0 
         end as serv_tax_id1,
         case when bill_tax_id not in(' ','-','+','#','N/A','Unknown','.','000000000') and 
              substr(replace(bill_tax_id,'-',''),9,1) in('0','1','2','3','4','5','6','7','8','9') then 1 else 0 
         end as bill_tax_id1,
         case when serv_pc_elig_ind in('0','1','2','4') then 1 else 0 end as serv_pc_elig_ind1, /*removed value 3 b/c it means unknown*/
         case when bill_pc_elig_ind in('0','1','2','4') then 1 else 0 end as bill_pc_elig_ind1, 
         case when serv_apcd_orgid not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as serv_apcd_orgid1,
         case when bill_apcd_orgid not in(' ','-','+','#','N/A','Unknown') then 1 else 0 end as bill_apcd_orgid1,
         case when serv_prov_bundle_id not in(' ','-','+','#','N/A','Unknown','000000','000000000','0000000000') then 1 else 0 
         end as serv_prov_bundle_id1,
         case when bill_prov_bundle_id not in(' ','-','+','#','N/A','Unknown','000000','000000000','0000000000') then 1 else 0 
         end as bill_prov_bundle_id1,
         case when serv_ind_primary_enc_prov_loc in('N','Y') then 1 else 0 end as serv_ind_primary_enc_prov_loc1,
         case when bill_ind_primary_enc_prov_loc in('N','Y') then 1 else 0 end as bill_ind_primary_enc_prov_loc1 

         FROM MHTEAM.DWDQ.INF_B_SC_~PN~_DOS_~MON~   MX
         )  FIRSTX
         GROUP BY FIRSTX.CDE_ENC_MCO;

    CREATE TABLE MHTEAM.DWDQ.INF_B_SC_~PN~_TOT_REX_~MON~
AS 
SELECT CDE_ENC_MCO, 
            SUM(INPATS) AS TOT_INPAT, 
            SUM(OUTPATS) AS TOT_OUTPT,
            SUM(OUTPATSQ2) AS TOT_OUTPTQ2, /*ADJUST B/C Q2 REMOVED REC_IND=0 FROM DATA PULL*/
            SUM(INPATSQ2) AS TOT_INPTQ2,
            SUM(TOT_NONART) AS TOT_NONART,
            SUM(MED) AS TOT_MED, 
            SUM(MEDQ2) AS TOT_MEDQ2,  /*ADJUST B/C Q2 REMOVED REC_IND=0 FROM DATA PULL*/
            SUM(PHARMS) AS TOT_PHARM,
            SUM(DENT) AS TOT_DENT, 
            SUM(DENTQ2) AS TOT_DENTQ2, /*ADJUST B/C Q2 REMOVED REC_IND=0 FROM DATA PULL*/
            SUM(LTCS) AS TOT_LTC,
            SUM(FACILTY) AS TOT_FACILTY, 
            SUM(ADJUST) AS TOT_ADJST, 
            SUM(MISS) AS TOT_MISSING, 
            SUM(NOT_PRM_DNT) AS TOT_NON_PHRM_DENT, /* USED TO COMPUTE % ON NON PHARM AND DENTAL CLAIMS, WHICH DON'T HAVE DX */  
            SUM(NOT_PRM_DNTQ2) AS TOT_NON_PHRM_DENTQ2, /*ADJUST B/C Q2 REMOVED REC_IND=0 FROM DATA PULL*/
            SUM(PHARM_SCRIPT) AS TOT_PHARM_SCRIPT, /* USED TO COMPUTE % ON PRESCRIBING ID/TYPE OTC ARE EXCLUDED PER SPECS*/
            SUM(NOTCOMPOUND) AS TOT_NOTCOMPOUND,
            SUM(PHARMSCRIPT_NOTCOMP) AS TOT_PHARMSCRIPT_NOTCOMP,
            SUM(NON_PHARM) AS TOT_NONPHARM, /*added 6.26.18*/
            (SUM(INPATS) + SUM(MED)) AS TOT_INP_MED, 
            (SUM(INPATS) + SUM(LTCS)) AS TOT_INPT_LTC,
            (SUM(INPATS) + SUM(OUTPATS)) AS TOT_INPT_OUTPT,
            (SUM(INPATS) + SUM(OUTPATS) + SUM(LTCS)) AS TOT_INPT_OUTPT_LTC,
            SUM(INOUTLTC_NOART) AS TOT_INOUTLTC_NOART,
            SUM(INPAT_FILTER1) AS TOT_INPAT_FILTER1,
            SUM(INPAT_FILTER2) AS TOT_INPAT_FILTER2,
            SUM(INOPLTC_EXC) AS TOT_INP_OP_LTC_EXC,
            SUM(INOPLTCM_EXC) AS TOT_INP_OP_LTC_M_EXC,
            SUM(INOPLTCM_EXCQ2) AS TOT_INP_OP_LTC_M_EXCQ2, /*ADJUST B/C Q2 REMOVED REC_IND=0 FROM DATA PULL*/
            SUM(MOD_DME) AS TOT_MOD_DME,
            SUM(MOD_LABXRAY) AS TOT_MOD_LABXRAY,
            SUM(MOD_SURGERYM) AS TOT_MOD_SURGERYM,
            SUM(REX) AS TOT_REX
FROM            
(SELECT 
CDE_ENC_MCO, 
CASE WHEN CLAIM_TYPE = 'I' THEN 1 ELSE 0 END INPATS,
CASE WHEN CLAIM_TYPE = 'P' THEN 1 ELSE 0 END PHARMS,
CASE WHEN CLAIM_TYPE = 'O' THEN 1 ELSE 0 END OUTPATS,
CASE WHEN CLAIM_TYPE = 'O' AND CDE_ENC_REC_IND <> '0' THEN 1 ELSE 0 END OUTPATSQ2,
CASE WHEN CLAIM_TYPE = 'I' AND CDE_ENC_REC_IND <> '0' THEN 1 ELSE 0 END INPATSQ2,
CASE WHEN CDE_ENC_REC_IND <> '0' THEN 1 ELSE 0 END TOT_NONART,
CASE WHEN CLAIM_TYPE = 'L' THEN 1 ELSE 0 END LTCS,
CASE WHEN CLAIM_TYPE IN ('M') THEN 1 ELSE 0 END MED, 
CASE WHEN CLAIM_TYPE IN ('M') AND CDE_ENC_REC_IND <> '0' THEN 1 ELSE 0 END MEDQ2,
CASE WHEN CLAIM_TYPE IN ('D') THEN 1 ELSE 0 END DENT,
CASE WHEN CLAIM_TYPE IN ('D') AND CDE_ENC_REC_IND <> '0' THEN 1 ELSE 0 END DENTQ2,
CASE WHEN CLAIM_TYPE NOT IN ('P','D') THEN 1 ELSE 0 END NOT_PRM_DNT,
CASE WHEN CLAIM_TYPE NOT IN ('P','D') AND CDE_ENC_REC_IND <> '0' THEN 1 ELSE 0 END NOT_PRM_DNTQ2,
CASE WHEN CLAIM_TYPE = 'P' AND CDE_DRUG_CLASS = 'F' THEN 1 ELSE 0 END PHARM_SCRIPT,
CASE WHEN IND_ENC_COMPOUND='2' THEN 1 ELSE 0 END AS NOTCOMPOUND,
CASE WHEN CLAIM_TYPE = 'P' AND CDE_DRUG_CLASS = 'F' AND IND_ENC_COMPOUND='2'  
     THEN 1 ELSE 0 END PHARMSCRIPT_NOTCOMP,
CASE WHEN CLAIM_TYPE <> 'P' THEN 1 ELSE 0 END AS NON_PHARM, /*added 6.26.18 for update to quantity logic*/
CASE WHEN SUBSTR(CDE_ENC_CLAIM_CAT,1,1) = '1' THEN 1 ELSE 0 END FACILTY, 
CASE WHEN cde_clm_disposition <> 'O' THEN 1 ELSE 0 END ADJUST, 
CASE WHEN CLAIM_TYPE IN (' ','-','+') THEN 1 ELSE 0 END MISS, 
CASE WHEN CLAIM_TYPE='I' AND substr(cde_type_of_bill_enc,1,2) <> '21' and SUBSTR(DSC_PATIENT_STATUS,1,2) NOT BETWEEN '30' AND '39' THEN 1 ELSE 0 END INPAT_FILTER1, 
CASE WHEN CLAIM_TYPE IN('I') AND substr(cde_type_of_bill_enc,1,2) not in('12','22','42','62','81','82') THEN 1 ELSE 0 END AS INPAT_FILTER2,
CASE WHEN CLAIM_TYPE IN('I','O','L') and cde_enc_rec_ind <> '0' THEN 1 ELSE 0 END AS INOUTLTC_NOART,
CASE WHEN ((CLAIM_TYPE='I' AND CDE_PATIENT_STATUS NOT BETWEEN '30' AND '39') OR CLAIM_TYPE IN('O','L')) THEN 1 ELSE 0 END INOPLTC_EXC,
CASE WHEN CLAIM_TYPE IN('I','M','O','L') AND (ENCSRGGRP_SEQ>0 or diagrp_seq>0) THEN 1 ELSE 0 END INOPLTCM_EXC,
CASE WHEN CLAIM_TYPE IN('I','M','O','L') AND (ENCSRGGRP_SEQ>0 or diagrp_seq>0) AND CDE_ENC_REC_IND <> '0' THEN 1 ELSE 0 END INOPLTCM_EXCQ2,

/*update 1.31.2019 dwhs-21097*/
case when CDE_ENC_REC_IND <> '0' AND claim_type in('M') and 
((substr(proc_code,1,1) in('E','K') and proc_code not in('E0241','E0242','E0243','E0700','K0739','E0244','E0245','E0246')) or 
(cde_enc_proc_type ='7' and substr(proc_code_enc,1,1) in('E','K') and proc_code_enc not in('E0241','E0242','E0243','E0700','K0739','E0244','E0245','E0246'))) 
then 1 else 0 end as mod_dme,

case when claim_type in('M') and CDE_ENC_REC_IND <> '0' AND (cde_place_of_service_enc not in('11') and substr(cde_type_of_bill_enc,1,2) not in('11')) 
and (substr(proc_code,1,1) in('7')  or 
(cde_enc_proc_type ='7' and substr(proc_code_enc,1,1) in('7'))) 
then 1 else 0 end as mod_labxray,

case when cde_enc_rec_ind <> '0' and claim_type in('M') and 
((proc_code between '10021' and '69990' and substr(proc_code,5,1) in('0','1','2','3','4','5','6','7','8','9') and proc_code_desc not in ('Unknown','N/A')) or 
(cde_enc_proc_type ='7' and proc_code_enc between '10021' and '69990' and substr(proc_code_enc,5,1) in('0','1','2','3','4','5','6','7','8','9') and
 proc_code_enc_desc not in('Unknown','N/A'))) THEN 1 ELSE 0 END AS MOD_SURGERYM,
1 AS REX
FROM MHTEAM.DWDQ.INF_B_SC_~PN~_DOS_~MON~  
 ) 
GROUP BY CDE_ENC_MCO; 

CREATE TABLE MHTEAM.DWDQ.INF_B_SC_~PN~_PERCENTS_~MON~
         AS
         SELECT
         I.CDE_ENC_MCO,
         S.TOT_NONART,
         S.TOT_INPAT,
         S.TOT_PHARM,
         S.TOT_OUTPT,
         S.TOT_OUTPTQ2,
         S.TOT_DENT,
         S.TOT_DENTQ2,
         S.TOT_MED,
         S.TOT_MEDQ2,
         S.TOT_NON_PHRM_DENTQ2,
         S.TOT_PHARM_SCRIPT,
         S.TOT_NONPHARM,
         S.TOT_INPT_LTC,
         S.TOT_INPT_OUTPT_LTC,
         S.TOT_INP_OP_LTC_M_EXCQ2,
         S.TOT_NON_PHRM_DENT,
         S.TOT_INPAT_FILTER1,
         S.TOT_INPAT_FILTER2,
         S.TOT_INPTQ2,
         S.TOT_MOD_DME,
         S.TOT_MOD_LABXRAY,
         S.TOT_MOD_SURGERYM,
         S.TOT_REX AS TOT_RECORDS,
         /* MEMBER ID - Field 76*/
         case when  I.ID_MEDICAID2 = 0 then  0
         ELSE (trunc((I.ID_MEDICAID2 / S.TOT_REX),4))
         end as PCT_ID_MEDICAID,
         /* FROM DOS - Field 17 */
         case when  DOS_FROM2 = 0 then  0
         else  trunc((DOS_FROM2 / S.TOT_REX),4)
         end as PCT_DOS_FROM,
         /* THRU DOS - Field 18 */
         case when  DOS_THRU2 = 0 then  0
         else  trunc((DOS_THRU2 / S.TOT_REX),4)
         end as PCT_DOS_THRU,
         /*  SERVICING PROVIDER ID - Field 50*/
         case when  SERV_PROV_ID2 = 0 then  0
         else  trunc((SERV_PROV_ID2 / S.TOT_REX),4)
         end as PCT_SERV_PROV_ID,
         /* SERVICING PROVIDER ID TYPE - Field 51 */
         CASE WHEN SERV_PROV_ID_TYP2 = 0 THEN 0
         ELSE trunc((SERV_PROV_ID_TYP2/S.TOT_REX),4)
         END AS PCT_SERV_PROV_ID_TYP,
         CASE WHEN SERV_PROV_TYP2 = 0 THEN 0
         ELSE trunc((SERV_PROV_TYP2/S.TOT_REX),4)
         END AS PCT_SERV_PROV_TYP,
         CASE WHEN SERV_PROV_spec2 = 0 THEN 0
         ELSE trunc((SERV_PROV_spec2/S.TOT_REX),4)
         END AS PCT_SERV_PROV_spec,
         CASE WHEN BILL_PROV_spec2 = 0 THEN 0
         ELSE trunc((BILL_PROV_spec2/S.TOT_REX),4)
         END AS PCT_BILL_PROV_spec,
         /* BILLING PROVIDER ID - Field 58*/
         case when  BILL_PROV_ID2 = 0 then  0
         else  trunc((BILL_PROV_ID2 / S.TOT_REX),4)
         end as PCT_BILL_PROV_ID,
         /* BILLING PROVIDER ID TYPE - Field 93 */
         CASE WHEN BILL_PROV_ID_TYP2 = 0 THEN 0
         ELSE trunc((BILL_PROV_ID_TYP2/S.TOT_REX),4)
         END AS PCT_BILL_PROV_ID_TYP,
         /* PRESCRIBING PROVIDER ID - ON PHARM CLAIMS ONLY EXCLUDE OTC- Field 81 */
         case when  PRESCRIBE_PROV2 = 0 then  0
         else  trunc((PRESCRIBE_PROV2 / S.TOT_PHARM_SCRIPT),4)
         end as PCT_PRESCRIBE_PROV_ID,
         /* PRESCRIBING PROVIDER ID TYPE - ON PHARM CLAIMS ONLY EXCLUDE OTC- Field 95 */
         CASE WHEN PRES_PROV_ID_TYP2 = 0 THEN 0
         ELSE trunc((PRES_PROV_ID_TYP2/S.TOT_PHARM_SCRIPT),4)
         END AS PCT_PRES_PROV_ID_TYP,
         /* PRIMARY DIAGNOSIS */
         case when primary_diag2 = 0 then 0
         else trunc((primary_diag2 / S.TOT_NON_PHRM_DENTQ2),4)
         END AS PCT_PRIMARY_DIAG,
         /* ICD VERSION */
         case when cde_icd_version2 = 0 then 0
         else trunc((cde_icd_version2 / S.TOT_INP_OP_LTC_M_EXCQ2),4)
         END AS PCT_ICD_VERSION,
         /* PROCEDURE CODE */
         case when proc_code_o2 = 0 or (s.tot_outptQ2=0) then 0
         else trunc((proc_code_o2 / (S.TOT_OUTPTQ2)),4)
         END AS PCT_PROC_CODE_O,
         case when proc_code_m2 = 0 or (s.tot_medQ2=0) then 0
         else trunc((proc_code_m2 / (S.TOT_MEDQ2)),4)
         END AS PCT_PROC_CODE_M,
         /*case when proc_code_i2 = 0 or (s.tot_inptQ2=0) then 0
         else trunc((proc_code_i2 / (S.TOT_inptQ2)),4)
         END AS PCT_PROC_CODE_I,*/
         /* PROC MODIFIER */
         case when proc_mod_dme2 = 0 then 0
         else trunc((proc_mod_dme2 / (S.TOT_MOD_DME)),4)
         END AS PCT_PROC_mod_DME,
         case when proc_mod_labxray2 = 0 then 0
         else trunc((proc_mod_labxray2 / (S.TOT_MOD_LABXRAY)),4)
         END AS PCT_PROC_mod_LABXRAY,
         case when proc_mod_surgerym2 = 0 then 0
         else trunc((proc_mod_surgerym2 / (S.TOT_MOD_SURGERYM)),4)
         END AS PCT_PROC_mod_SURGERYM,
         case when qty_unit_bill2 =0 then 0
         else trunc ((qty_unit_bill2 / (S.TOT_NONPHARM)),4)
         END AS PCT_qty_unit_bill,
         case when medicare_code2 =0 then 0
         else trunc ((medicare_code2 / (S.TOT_rex)),4)
         END AS PCT_medicare_code,
         case when amtgrosspay2 =0 then 0
         else trunc ((amtgrosspay2 / (S.TOT_rex)),4)
         END AS PCT_amt_grosspay,
         case when amtpaymcare2 =0 then 0
         else trunc ((amtpaymcare2 / (S.TOT_rex)),4)
         END AS PCT_amt_paymcare,
         case when svccat2 =0 then 0
         else trunc ((svccat2 / (S.TOT_rex)),4)
         END AS PCT_svc_cat,
         case when patpayamt2 =0 then 0
         else trunc ((patpayamt2 / (S.TOT_rex)),4)
         END AS PCT_pat_payamt,
         /* DATE SCRIPT WRITTEN */
         case when  SCRIPTWRIT2 = 0 then  0
         ELSE (trunc((SCRIPTWRIT2 / S.TOT_PHARM_SCRIPT),4))
         end as PCT_SCRIPT_WRITTEN,
         case when REFILL2 = 0 THEN 0
         ELSE (trunc((REFILL2 / S.TOT_PHARM_SCRIPT),4))
         end as PCT_REFILL,
         case when DISPENSE2 = 0 THEN 0
         ELSE (trunc((DISPENSE2 / S.TOT_PHARM_SCRIPT),4))
         end as PCT_DISPENSE,
         case when SCRIPT2 = 0 THEN 0
         ELSE (trunc((SCRIPT2 / S.TOT_PHARM_SCRIPT),4))
         end as PCT_SCRIPT,
         case when FEE2 = 0 THEN 0
         ELSE (trunc((FEE2 / S.TOT_PHARM_SCRIPT),4))
         end as PCT_FEE,
         case when NDC2 = 0 THEN 0
         ELSE (trunc((NDC2 / S.TOT_PHARMSCRIPT_NOTCOMP),4))
         end as PCT_NDC,
         case when CLAIMCAT2 = 0 THEN 0
         ELSE (trunc((CLAIMCAT2 / S.TOT_REX),4))
         end as PCT_CLAIMCAT,
         case when RECIND2 = 0 THEN 0
         ELSE (trunc((RECIND2 / S.TOT_REX),4))
         end as PCT_RECIND,
         case when AMTBILL2 = 0 THEN 0
         ELSE (trunc((AMTBILL2 / S.TOT_REX),4))
         end as PCT_AMTBILL,
         case when AMTPAY2 = 0 THEN 0
         ELSE (trunc((AMTPAY2 / S.TOT_REX),4))
         end as PCT_AMTPAY,
         case when AMTALLOW2 = 0 THEN 0
         ELSE (trunc((AMTALLOW2 / S.TOT_REX),4))
         end as PCT_AMTALLOW,
         case when  ADMITDT2 = 0 then  0
         ELSE (trunc((ADMITDT2 / (S.TOT_INPT_LTC)),4))
         end as PCT_ADMITDT,
         case when DISCHARGEDT2 = 0 THEN 0
         ELSE (trunc((DISCHARGEDT2 / S.TOT_INPAT_FILTER1),4))
         end as PCT_DISCHARGEDT,
         case when CDE_DIAG_ADMIT2 = 0 THEN 0
         ELSE (trunc((CDE_DIAG_ADMIT2 / S.TOT_INPAT_FILTER2),4))
         end as PCT_DIAG_ADMIT,
         case when CDE_PATIENT_STATUS2 = 0 THEN 0
         ELSE (trunc((CDE_PATIENT_STATUS2 / S.TOT_INPT_OUTPT),4))
         end as PCT_PATIENT_STATUS,
         case when CDE_ADMIT_TYPE2 = 0 THEN 0
         ELSE (trunc((CDE_ADMIT_TYPE2 / S.TOT_INPT_LTC),4))
         end as PCT_ADMIT_TYPE,
         case when CDE_ADMIT_SOURCE2 = 0 THEN 0
         ELSE (trunc((CDE_ADMIT_SOURCE2 / S.TOT_INPT_LTC),4))
         end as PCT_ADMIT_SOURCE,
         case when REV_CODE2 = 0 THEN 0
         ELSE (trunc((REV_CODE2 / S.TOT_INOUTLTC_NOART),4))
         end as PCT_REV_CODE,
         case when POS_CODE2 = 0 THEN 0
         ELSE (trunc((POS_CODE2 / S.TOT_NON_PHRM_DENT),4))
         end as PCT_POS_CODE,
         case when POS_TYPE2 = 0 THEN 0
         ELSE (trunc((POS_TYPE2 / S.TOT_NON_PHRM_DENT),4))
         end as PCT_POS_TYPE,

         case when serv_nam_last2 = 0 then 0
         else trunc((serv_nam_last2/s.tot_rex),4)
         end as pct_serv_nam_last,

         case when bill_nam_last2 = 0 then 0
         else trunc((bill_nam_last2/s.tot_rex),4)
         end as pct_bill_nam_last,

         case when serv_adr_strt2 = 0 then 0
         else trunc((serv_adr_strt2/s.tot_rex),4)
         end as pct_serv_adr_strt,

         case when bill_adr_strt2 = 0 then 0
         else trunc((bill_adr_strt2/s.tot_rex),4)
         end as pct_bill_adr_strt,

         case when serv_adr_city2 = 0 then 0
         else trunc((serv_adr_city2/s.tot_rex),4)
         end as pct_serv_adr_city,

         case when bill_adr_city2 = 0 then 0
         else trunc((bill_adr_city2/s.tot_rex),4)
         end as pct_bill_adr_city,

         case when serv_adr_state2 = 0 then 0
         else trunc((serv_adr_state2/s.tot_rex),4)
         end as pct_serv_adr_state,
         
         case when bill_adr_state2 = 0 then 0
         else trunc((bill_adr_state2/s.tot_rex),4)
         end as pct_bill_adr_state,

         case when serv_adr_zip2 = 0 then 0
         else trunc((serv_adr_zip2/s.tot_rex),4)
         end as pct_serv_adr_zip,

         case when bill_adr_zip2 = 0 then 0
         else trunc((bill_adr_zip2/s.tot_rex),4)
         end as pct_bill_adr_zip,

         case when serv_adr_mail_strt2 = 0 then 0
         else trunc((serv_adr_mail_strt2/s.tot_rex),4)
         end as pct_serv_adr_mail_strt,

         case when bill_adr_mail_strt2 = 0 then 0
         else trunc((bill_adr_mail_strt2/s.tot_rex),4)
         end as pct_bill_adr_mail_strt,

         case when serv_adr_mail_city2 = 0 then 0
         else trunc((serv_adr_mail_city2/s.tot_rex),4)
         end as pct_serv_adr_mail_city,

         case when bill_adr_mail_city2 = 0 then 0
         else trunc((bill_adr_mail_city2/s.tot_rex),4)
         end as pct_bill_adr_mail_city,

         case when serv_adr_mail_state2 = 0 then 0
         else trunc((serv_adr_mail_state2/s.tot_rex),4)
         end as pct_serv_adr_mail_state,
         
         case when bill_adr_mail_state2 = 0 then 0
         else trunc((bill_adr_mail_state2/s.tot_rex),4)
         end as pct_bill_adr_mail_state,

         case when serv_adr_mail_zip2 = 0 then 0
         else trunc((serv_adr_mail_zip2/s.tot_rex),4)
         end as pct_serv_adr_mail_zip,

         case when bill_adr_mail_zip2 = 0 then 0
         else trunc((bill_adr_mail_zip2/s.tot_rex),4)
         end as pct_bill_adr_mail_zip,

         case when serv_panel_open2 = 0 then 0
         else trunc((serv_panel_open2/s.tot_rex),4)
         end as pct_serv_panel_open,

         case when bill_panel_open2 = 0 then 0
         else trunc((bill_panel_open2/s.tot_rex),4)
         end as pct_bill_panel_open,

         case when serv_npi2 = 0 then 0 
         else trunc((serv_npi2/s.tot_rex),4)
         end as pct_serv_npi,

         case when bill_npi2 = 0 then 0 
         else trunc((bill_npi2/s.tot_rex),4)
         end as pct_bill_npi,

         case when serv_tax_id2 = 0 then 0
         else trunc((serv_tax_id2/s.tot_rex),4)
         end as pct_serv_tax_id,

         case when bill_tax_id2 = 0 then 0
         else trunc((bill_tax_id2/s.tot_rex),4)
         end as pct_bill_tax_id,

         case when serv_pc_elig_ind2 = 0 then 0
         else trunc((serv_pc_elig_ind2/s.tot_rex),4)
         end as pct_serv_pc_elig_ind,

         case when bill_pc_elig_ind2 = 0 then 0
         else trunc((bill_pc_elig_ind2/s.tot_rex),4)
         end as pct_bill_pc_elig_ind,
            
         case when serv_apcd_orgid2 = 0 then 0
         else trunc((serv_apcd_orgid2/s.tot_rex),4)
         end as pct_serv_apcd_orgid,

         case when bill_apcd_orgid2 = 0 then 0
         else trunc((bill_apcd_orgid2/s.tot_rex),4)
         end as pct_bill_apcd_orgid,

         case when serv_prov_bundle_id2 = 0 then 0
         else trunc((serv_prov_bundle_id2/s.tot_rex),4)
         end as pct_serv_prov_bundle_id,
 
         case when bill_prov_bundle_id2 = 0 then 0
         else trunc((bill_prov_bundle_id2/s.tot_rex),4)
         end as pct_bill_prov_bundle_id,

         case when serv_ind_primary_enc_prov_loc2 = 0 then 0
         else trunc((serv_ind_primary_enc_prov_loc2/s.tot_rex),4)
         end as pct_serv_ind_prim_enc_prov_loc,

         case when bill_ind_primary_enc_prov_loc2 = 0 then 0
         else trunc((bill_ind_primary_enc_prov_loc2/s.tot_rex),4)
         end as pct_bill_ind_prim_enc_prov_loc

         FROM MHTEAM.DWDQ.INF_B_SC_~PN~_FIELD_REX_~MON~ I
         INNER JOIN MHTEAM.DWDQ.INF_B_SC_~PN~_TOT_REX_~MON~ S ON I.CDE_ENC_MCO = S.CDE_ENC_MCO;

         create table MHTEAM.DWDQ.INF_B_SC_~PN~_TRANSPOSE1_~MON~
AS
select * from (
select
  CDE_ENC_MCO             ,
  PCT_ID_MEDICAID         ,
  PCT_DOS_FROM            ,
  PCT_DOS_THRU            ,
  PCT_SERV_PROV_ID        ,
  PCT_SERV_PROV_ID_TYP    ,
  PCT_SERV_PROV_TYP       ,
  PCT_SERV_PROV_SPEC      ,
  PCT_BILL_PROV_SPEC      ,
  PCT_BILL_PROV_ID        ,
  PCT_BILL_PROV_ID_TYP    ,
  PCT_PRESCRIBE_PROV_ID   ,
  PCT_PRES_PROV_ID_TYP    ,
  PCT_PRIMARY_DIAG        ,
  PCT_ICD_VERSION         ,
  PCT_PROC_CODE_O         ,
  PCT_PROC_CODE_M         ,
  PCT_PROC_MOD_DME        ,
  PCT_PROC_MOD_LABXRAY    ,
  PCT_PROC_MOD_SURGERYM   ,
  PCT_QTY_UNIT_BILL       ,
  PCT_MEDICARE_CODE       ,
  PCT_AMT_GROSSPAY        ,
  PCT_AMT_PAYMCARE        ,
  PCT_SVC_CAT             ,
  PCT_PAT_PAYAMT          ,
  PCT_SCRIPT_WRITTEN      ,
  PCT_REFILL              ,
  PCT_DISPENSE            ,
  PCT_SCRIPT              ,
  PCT_FEE                 ,
  PCT_NDC                 ,
  PCT_CLAIMCAT            ,
  PCT_RECIND              ,
  PCT_AMTBILL             ,
  PCT_AMTPAY              ,
  PCT_AMTALLOW            ,
  PCT_ADMITDT             ,
  PCT_DISCHARGEDT         ,
  PCT_DIAG_ADMIT          ,
  PCT_PATIENT_STATUS      ,
  PCT_ADMIT_TYPE          ,
  PCT_ADMIT_SOURCE        ,
  PCT_REV_CODE            ,
  PCT_POS_CODE            ,
  PCT_POS_TYPE            ,
  PCT_SERV_NAM_LAST       ,
  PCT_BILL_NAM_LAST       ,
  PCT_SERV_ADR_STRT       ,
  PCT_BILL_ADR_STRT       ,
  PCT_SERV_ADR_CITY       ,
  PCT_BILL_ADR_CITY       ,
  PCT_SERV_ADR_STATE      ,
  PCT_BILL_ADR_STATE      ,
  PCT_SERV_ADR_ZIP        ,
  PCT_BILL_ADR_ZIP        ,
  PCT_SERV_ADR_MAIL_STRT  ,
  PCT_BILL_ADR_MAIL_STRT  ,
  PCT_SERV_ADR_MAIL_CITY  ,
  PCT_BILL_ADR_MAIL_CITY  ,
  PCT_SERV_ADR_MAIL_STATE ,
  PCT_BILL_ADR_MAIL_STATE ,
  PCT_SERV_ADR_MAIL_ZIP   ,
  PCT_BILL_ADR_MAIL_ZIP   ,
  PCT_SERV_PANEL_OPEN     ,
  PCT_BILL_PANEL_OPEN     ,
  PCT_SERV_NPI            ,
  PCT_BILL_NPI            ,
  PCT_SERV_TAX_ID         ,
  PCT_BILL_TAX_ID         ,
  PCT_SERV_PC_ELIG_IND    ,
  PCT_BILL_PC_ELIG_IND    ,
  PCT_SERV_APCD_ORGID     ,
  PCT_BILL_APCD_ORGID     ,
  PCT_SERV_PROV_BUNDLE_ID ,
  PCT_BILL_PROV_BUNDLE_ID ,
  PCT_SERV_IND_PRIM_ENC_PROV_LOC ,
  PCT_BILL_IND_PRIM_ENC_PROV_LOC 

from MHTEAM.DWDQ.INF_B_SC_~PN~_PERCENTS_~MON~
) s
unpivot (
  actuals for MEAS in (
  PCT_ID_MEDICAID         ,
  PCT_DOS_FROM            ,
  PCT_DOS_THRU            ,
  PCT_SERV_PROV_ID        ,
  PCT_SERV_PROV_ID_TYP    ,
  PCT_SERV_PROV_TYP       ,
  PCT_SERV_PROV_SPEC      ,
  PCT_BILL_PROV_SPEC      ,
  PCT_BILL_PROV_ID        ,
  PCT_BILL_PROV_ID_TYP    ,
  PCT_PRESCRIBE_PROV_ID   ,
  PCT_PRES_PROV_ID_TYP    ,
  PCT_PRIMARY_DIAG        ,
  PCT_ICD_VERSION         ,
  PCT_PROC_CODE_O         ,
  PCT_PROC_CODE_M         ,
  PCT_PROC_MOD_DME        ,
  PCT_PROC_MOD_LABXRAY    ,
  PCT_PROC_MOD_SURGERYM   ,
  PCT_QTY_UNIT_BILL       ,
  PCT_MEDICARE_CODE       ,
  PCT_AMT_GROSSPAY        ,
  PCT_AMT_PAYMCARE        ,
  PCT_SVC_CAT             ,
  PCT_PAT_PAYAMT          ,
  PCT_SCRIPT_WRITTEN      ,
  PCT_REFILL              ,
  PCT_DISPENSE            ,
  PCT_SCRIPT              ,
  PCT_FEE                 ,
  PCT_NDC                 ,
  PCT_CLAIMCAT            ,
  PCT_RECIND              ,
  PCT_AMTBILL             ,
  PCT_AMTPAY              ,
  PCT_AMTALLOW            ,
  PCT_ADMITDT             ,
  PCT_DISCHARGEDT         ,
  PCT_DIAG_ADMIT          ,
  PCT_PATIENT_STATUS      ,
  PCT_ADMIT_TYPE          ,
  PCT_ADMIT_SOURCE        ,
  PCT_REV_CODE            ,
  PCT_POS_CODE            ,
  PCT_POS_TYPE            ,
  PCT_SERV_NAM_LAST       ,
  PCT_BILL_NAM_LAST       ,
  PCT_SERV_ADR_STRT       ,
  PCT_BILL_ADR_STRT       ,
  PCT_SERV_ADR_CITY       ,
  PCT_BILL_ADR_CITY       ,
  PCT_SERV_ADR_STATE      ,
  PCT_BILL_ADR_STATE      ,
  PCT_SERV_ADR_ZIP        ,
  PCT_BILL_ADR_ZIP        ,
  PCT_SERV_ADR_MAIL_STRT  ,
  PCT_BILL_ADR_MAIL_STRT  ,
  PCT_SERV_ADR_MAIL_CITY  ,
  PCT_BILL_ADR_MAIL_CITY  ,
  PCT_SERV_ADR_MAIL_STATE ,
  PCT_BILL_ADR_MAIL_STATE ,
  PCT_SERV_ADR_MAIL_ZIP   ,
  PCT_BILL_ADR_MAIL_ZIP   ,
  PCT_SERV_PANEL_OPEN     ,
  PCT_BILL_PANEL_OPEN     ,
  PCT_SERV_NPI            ,
  PCT_BILL_NPI            ,
  PCT_SERV_TAX_ID         ,
  PCT_BILL_TAX_ID         ,
  PCT_SERV_PC_ELIG_IND    ,
  PCT_BILL_PC_ELIG_IND    ,
  PCT_SERV_APCD_ORGID     ,
  PCT_BILL_APCD_ORGID     ,
  PCT_SERV_PROV_BUNDLE_ID ,
  PCT_BILL_PROV_BUNDLE_ID ,
  PCT_SERV_IND_PRIM_ENC_PROV_LOC ,
  PCT_BILL_IND_PRIM_ENC_PROV_LOC 
 ))
order by
CDE_ENC_MCO;

CREATE TABLE MHTEAM.DWDQ.INF_B_SC_~PN~_TRANSPOSE2_~MON~
AS
SELECT MEAS, 
       "'BHP'" AS BHP, 
       "'CCA'" AS CCA, 
       "'NAV'" AS NAV, 
       "'SWH'" AS SWH, 
       "'TFT'" AS TFT,
       "'UHC'" AS UHC,
       "'MGS'" AS MGS
FROM (
    SELECT * FROM MHTEAM.DWDQ.INF_B_SC_~PN~_TRANSPOSE1_~MON~
    PIVOT
    (
        SUM(actuals)
        FOR cde_enc_mco IN ( 'BHP', 'CCA', 'NAV', 'SWH', 'TFT', 'UHC', 'MGS' )
    )
)
ORDER BY meas;

create table MHTEAM.DWDQ.INF_B_SC_~PN~_TRANSPOSE21_~MON~
AS
select * from (
select
  CDE_ENC_MCO,
  CAST(TOT_NONART AS NUMBER(15)) AS TOT_NONART,
  CAST(TOT_INPAT AS NUMBER(15)) AS TOT_INPAT,
  CAST(TOT_PHARM AS NUMBER(15)) AS TOT_PHARM,
  CAST(TOT_OUTPT AS NUMBER(15)) AS TOT_OUTPT,
  CAST(TOT_OUTPTQ2 AS NUMBER(15)) AS TOT_OUTPTQ2,
  CAST(TOT_DENT AS NUMBER(15)) AS TOT_DENT,
  CAST(TOT_DENTQ2 AS NUMBER(15)) AS TOT_DENTQ2,
  CAST(TOT_MED AS NUMBER(15)) AS TOT_MED,
  CAST(TOT_MEDQ2 AS NUMBER(15)) AS TOT_MEDQ2,
  CAST(TOT_NON_PHRM_DENTQ2 AS NUMBER(15)) AS TOT_NON_PHRM_DENTQ2,
  CAST(TOT_PHARM_SCRIPT AS NUMBER(15)) AS TOT_PHARM_SCRIPT,
  CAST(TOT_NONPHARM AS NUMBER(15)) AS TOT_NONPHARM,
  CAST(TOT_INPT_LTC AS NUMBER(15)) AS TOT_INPT_LTC,
  CAST(TOT_INPT_OUTPT_LTC AS NUMBER(15)) AS TOT_INPT_OUTPT_LTC,
  CAST(TOT_INP_OP_LTC_M_EXCQ2 AS NUMBER(15)) AS TOT_INP_OP_LTC_M_EXCQ2,
  CAST(TOT_NON_PHRM_DENT AS NUMBER(15)) AS TOT_NON_PHRM_DENT,
  CAST(TOT_INPAT_FILTER1 AS NUMBER(15)) AS TOT_INPAT_FILTER1,
  CAST(TOT_INPAT_FILTER2 AS NUMBER(15)) AS TOT_INPAT_FILTER2,
  CAST(TOT_INPTQ2 AS NUMBER(15)) AS TOT_INPTQ2,
  CAST(TOT_MOD_DME AS NUMBER(15)) AS TOT_MOD_DME,
  CAST(TOT_MOD_LABXRAY AS NUMBER(15)) AS TOT_MOD_LABXRAY,
  CAST(TOT_MOD_SURGERYM AS NUMBER(15)) AS TOT_MOD_SURGERYM,
  CAST(TOT_PHARMSCRIPT_NOTCOMP AS NUMBER(15)) AS TOT_PHARMSCRIPT_NOTCOMP,
  CAST(TOT_INOUTLTC_NOART AS NUMBER(15)) AS TOT_INOUTLTC_NOART,
  CAST(TOT_INPT_OUTPT AS NUMBER(15)) AS TOT_INPT_OUTPT,
  CAST(TOT_REX AS NUMBER(15)) AS TOT_REX
from MHTEAM.DWDQ.INF_B_SC_~PN~_TOT_REX_~MON~
) s
unpivot (
  claim_count for Meas in (
  TOT_NONART              ,
  TOT_INPAT               ,
  TOT_PHARM               ,
  TOT_OUTPT               ,
  TOT_OUTPTQ2             ,
  TOT_DENT                ,
  TOT_DENTQ2              ,
  TOT_MED                 ,
  TOT_MEDQ2               ,
  TOT_NON_PHRM_DENTQ2     ,
  TOT_PHARM_SCRIPT        ,
  TOT_NONPHARM            ,
  TOT_INPT_LTC            ,
  TOT_INPT_OUTPT_LTC      ,
  TOT_INP_OP_LTC_M_EXCQ2  ,
  TOT_NON_PHRM_DENT       ,
  TOT_INPAT_FILTER1       ,
  TOT_INPAT_FILTER2       ,
  TOT_INPTQ2              ,
  TOT_MOD_DME             ,
  TOT_MOD_LABXRAY         ,
  TOT_MOD_SURGERYM        ,
  TOT_PHARMSCRIPT_NOTCOMP ,
  TOT_INOUTLTC_NOART      ,
  TOT_INPT_OUTPT          ,
  TOT_REX
 ))
order by
CDE_ENC_MCO;

CREATE TABLE MHTEAM.DWDQ.INF_B_SC_~PN~_TRANSPOSE22_~MON~
AS
SELECT MEAS AS CLAIM_COUNT, 
       "'BHP'" AS BHP, 
       "'CCA'" AS CCA, 
       "'NAV'" AS NAV, 
       "'SWH'" AS SWH, 
       "'TFT'" AS TFT,
       "'UHC'" AS UHC,
       "'MGS'" AS MGS
FROM (
    SELECT * FROM MHTEAM.DWDQ.INF_B_SC_~PN~_TRANSPOSE21_~MON~
    PIVOT
    (
        SUM(claim_count)
        FOR cde_enc_mco IN ( 'BHP', 'CCA', 'NAV', 'SWH', 'TFT', 'UHC', 'MGS' )
    )
)
ORDER BY meas;

create table MHTEAM.DWDQ.INF_B_SC_~PN~_REP_STEP1_~MON~
as
select 
case when meas='PCT_CLAIMCAT' then '2 Claim Category'
     when meas='PCT_RECIND' then '4 Record Indicator'
     when meas='PCT_DOS_FROM' then '17 From Service Date'
     when meas='PCT_DOS_THRU' then '18 To Service Date'
     when meas='PCT_PRIMARY_DIAG' then '19 Primary Diagnosis'
     when meas='PCT_PROC_CODE_O' then '26 Procedure Code Outpt'
     when meas='PCT_PROC_CODE_M' then '26 Procedure Code Prof_M'
     /*when meas='PCT_PROC_CODE_I' then '26 Procedure Code Inpt'*/ /*removed from reporting*/
     when meas='PCT_PROC_MOD_DME' then '27 Procedure Modifier DME'     
     when meas='PCT_PROC_MOD_LABXRAY' then '27 Procedure Modifier LabXray'
     when meas='PCT_PROC_MOD_SURGERYM' then '27 Procedure Modifier Surgery Prof_M'
     when meas='PCT_QTY_UNIT_BILL' then '36 Quantity'
     when meas='PCT_AMTPAY' then '68 Net Payment'
     when meas='PCT_ID_MEDICAID' then '76 New Member ID'
     when meas='PCT_MEDICARE_CODE' then '11 Medicare Code'
     when meas='PCT_REV_CODE' then '31 Revenue Code'
     when meas='PCT_POS_CODE' then '32 Place of Service'
     when meas='PCT_POS_TYPE' then '33 Place of Service Type'
     when meas='PCT_AMTBILL' then '60 Billed Charge'
     when meas='PCT_AMT_GROSSPAY' then '61 Gross Payment Amount'
     when meas='PCT_AMT_PAYMCARE' then '63 Medicare Amount'
     when meas='PCT_SVC_CAT' then '80 Service Category'
     when meas='PCT_AMTALLOW' then '86 Allowable Amount'
     when meas='PCT_ICD_VERSION' then '193 ICD Version Qualifier'
     when meas='PCT_ADMITDT' then '15 Admission Date'
     when meas='PCT_DISCHARGEDT' then '16 Discharge Date'
     when meas='PCT_ADMIT_TYPE' then '24    Type of Admission'
     when meas='PCT_NDC' then '37 NDC Number' 
     when meas='PCT_SERV_PROV_ID' then '50 Servicing Provider ID'
     when meas='PCT_SERV_PROV_ID_TYP' then '51 Servicing Provider ID Type'
     when meas='PCT_SERV_PROV_TYP' then '55 Servicing Provider Type'
     when meas='PCT_SERV_PROV_SPEC' then '56 Servicing Provider Specialty'
     when meas='PCT_BILL_PROV_ID' then '58 Billing Provider ID'
     when meas='PCT_BILL_PROV_ID_TYP' then '93 Billing Provider ID Type'
     when meas='PCT_BILL_PROV_SPEC' then ' Billing Provider Specialty'
     when meas='PCT_PATIENT_STATUS' then '34 Patient Discharge Status'
     when meas='PCT_DIAG_ADMIT' then '85 Admitting Diagnosis'
     when meas='PCT_PAT_PAYAMT' then '124 Patient Pay Amount'
     when meas='PCT_ADMIT_SOURCE' then '25 Source of Admission'
     when meas='PCT_PRESCRIBE_PROV_ID' then '81 Prescribing Prov. ID'
     when meas='PCT_PRES_PROV_ID_TYP' then '94 Prescribing Prov. ID Type'
     when meas='PCT_REFILL' then '40 Refill Indicator'
     when meas='PCT_DISPENSE' then '41 Dispense as Written Indicator'
     when meas='PCT_FEE' then '67 Dispensing Fee'
     when meas='PCT_SCRIPT_WRITTEN' then '82 Date Script Written'
     when meas='PCT_SCRIPT' then '198 Prescription Number'
     when meas='PCT_SERV_NAM_LAST' then '6 Servicing Provider Last Name'
     when meas='PCT_BILL_NAM_LAST' then '6 Billing Provider Last Name'
     when meas='PCT_SERV_ADR_STRT' then '8 Servicing Provider Street Address'
     when meas='PCT_BILL_ADR_STRT' then '8 Billing Provider Street Address'
     when meas='PCT_SERV_ADR_CITY' then '9 Servicing Provider City Address'
     when meas='PCT_BILL_ADR_CITY' then '9 Billing Provider City Address'
     when meas='PCT_SERV_ADR_STATE' then '10 Servicing Provider State Address'
     when meas='PCT_BILL_ADR_STATE' then '10 Billing Provider State Address'
     when meas='PCT_SERV_ADR_ZIP' then '11 Servicing Provider Zip Address'
     when meas='PCT_BILL_ADR_ZIP' then '11 Billing Provider Zip Address'
     when meas='PCT_SERV_ADR_MAIL_STRT' then '12 Servicing Provider Street Mailing Address'
     when meas='PCT_BILL_ADR_MAIL_STRT' then '12 Billing Provider Street Mailing Address'
     when meas='PCT_SERV_ADR_MAIL_CITY' then '13 Servicing Provider City Mailing Address'
     when meas='PCT_BILL_ADR_MAIL_CITY' then '13 Billing Provider City Mailing Address'
     when meas='PCT_SERV_ADR_MAIL_STATE' then '14 Servicing Provider State Mailing Address'
     when meas='PCT_BILL_ADR_MAIL_STATE' then '14 Billing Provider State Mailing Address'
     when meas='PCT_SERV_ADR_MAIL_ZIP' then '15 Servicing Provider Zip Mailing Address'
     when meas='PCT_BILL_ADR_MAIL_ZIP' then '15 Billing Provider Zip Mailing Address'
     when meas='PCT_SERV_PANEL_OPEN' then '23 Servicing Provider Accepting New Patients'
     when meas='PCT_BILL_PANEL_OPEN' then '23 Billing Provider Accepting New Patients'
     when meas='PCT_SERV_NPI' then '26 Servicing Provider NPI'
     when meas='PCT_BILL_NPI' then '26 Billing Provider NPI'
     when meas='PCT_SERV_TAX_ID' then '30 Servicing Tax ID'
     when meas='PCT_BILL_TAX_ID' then '30 Billing Tax ID'
     when meas='PCT_SERV_PC_ELIG_IND' then '33 Servicing Provider Primary Care Eligibility Ind'
     when meas='PCT_BILL_PC_ELIG_IND' then '33 Billing Provider Primary Care Eligibility Ind'
     when meas='PCT_SERV_APCD_ORGID' then '34 Servicing Provider APCD Organization ID'
     when meas='PCT_BILL_APCD_ORGID' then '34 Billing Provider APCD Organization ID'
     when meas='PCT_SERV_PROV_BUNDLE_ID' then '40 Servicing Provider Bundle ID'
     when meas='PCT_BILL_PROV_BUNDLE_ID' then '40 Billing Provider Bundle ID' 
     when meas='PCT_SERV_IND_PRIM_ENC_PROV_LOC' then '41 Servicing Provider Primary Address Location Indicator'
     when meas='PCT_BILL_IND_PRIM_ENC_PROV_LOC' then '41 Billing Provider Primary Address Location Indicator'
end as meas,
case when meas='PCT_ID_MEDICAID' or meas ='PCT_DOS_FROM' or meas ='PCT_DOS_THRU' or 
          meas='PCT_SERV_PROV_ID' or meas ='PCT_SERV_PROV_ID_TYP' or meas ='PCT_SERV_PROV_TYP' or
          meas='PCT_SERV_PROV_SPEC' or meas ='PCT_BILL_PROV_ID' or meas ='PCT_BILL_PROV_ID_TYP' or  
          meas='PCT_BILL_PROV_SPEC' or meas='PCT_MEDICARE_CODE' or
          meas='PCT_AMT_GROSSPAY' or meas='PCT_AMT_PAYMCARE' or meas='PCT_SVC_CAT' or
          meas='PCT_PAT_PAYAMT' or meas='PCT_CLAIMCAT' or meas='PCT_RECIND' or meas='PCT_AMTBILL' or 
          meas='PCT_AMTPAY' or meas='PCT_AMTALLOW' or meas='PCT_SERV_NAM_LAST' or meas='PCT_BILL_NAM_LAST' or
          meas='PCT_SERV_ADR_STRT' or meas='PCT_BILL_ADR_STRT' or meas='PCT_SERV_ADR_CITY' or
          meas='PCT_BILL_ADR_CITY' or meas='PCT_SERV_ADR_STATE' or meas='PCT_BILL_ADR_STATE' or 
          meas='PCT_SERV_ADR_ZIP' or meas='PCT_BILL_ADR_ZIP' or meas='PCT_SERV_ADR_MAIL_STRT' or
          meas='PCT_BILL_ADR_MAIL_STRT' or meas='PCT_SERV_ADR_MAIL_CITY' or meas='PCT_BILL_ADR_MAIL_CITY' or
          meas='PCT_SERV_ADR_MAIL_STATE' or meas='PCT_BILL_ADR_MAIL_STATE' or meas='PCT_SERV_ADR_MAIL_ZIP' or
          meas='PCT_BILL_ADR_MAIL_ZIP' or meas='PCT_SERV_PANEL_OPEN' or meas='PCT_BILL_PANEL_OPEN' or
          meas='PCT_SERV_NPI' or meas='PCT_BILL_NPI' or meas='PCT_SERV_TAX_ID' or meas='PCT_BILL_TAX_ID' or
          meas='PCT_SERV_TAX_ID' or meas='PCT_BILL_TAX_ID' or meas='PCT_SERV_PC_ELIG_IND' or 
          meas='PCT_BILL_PC_ELIG_IND' or meas='PCT_SERV_APCD_ORGID' or meas='PCT_BILL_APCD_ORGID' or
          meas='PCT_SERV_PROV_BUNDLE_ID' or meas='PCT_BILL_PROV_BUNDLE_ID' or meas='PCT_SERV_IND_PRIM_ENC_PROV_LOC' or
          meas='PCT_BILL_IND_PRIM_ENC_PROV_LOC'
     then 'All Claim Types' 
     when meas='PCT_QTY_UNIT_BILL' then 'Non-Pharmacy Claims' /*updated 6.28.18*/
     when meas='PCT_PRESCRIBE_PROV_ID' or meas='PCT_PRES_PROV_ID_TYP' or meas='PCT_SCRIPT_WRITTEN' or
          meas='PCT_REFILL' or meas='PCT_DISPENSE' or meas='PCT_SCRIPT' or meas='PCT_FEE' 
     then 'Pharmacy (prescriptions only, not OTC)'
     when meas='PCT_NDC' then 'Pharmacy (prescriptions only, not OTC and not compounded)'
     when meas='PCT_PRIMARY_DIAG' or meas='PCT_ICD_VERSION' then 'Inpatient, Outpatient, Professional, and LTC'
     when meas='PCT_PROC_CODE_O' then 'Outpatient' 
     when meas='PCT_PROC_CODE_M' or meas='PCT_PROC_MOD_LABXRAY' or meas='PCT_PROC_MOD_SURGERYM' then 'Professional'
     when meas='PCT_PROC_MOD_DME' then 'Professional (modifier=DME)'
     when meas='PCT_ADMITDT' or meas='PCT_ADMIT_TYPE' or meas='PCT_ADMIT_SOURCE' then 'Inpatient and LTC'
     when meas='PCT_DISCHARGEDT' or meas='PCT_DIAG_ADMIT' then 'Inpatient'
     when meas='PCT_PATIENT_STATUS' then 'Inpatient and Outpatient'
     when meas='PCT_REV_CODE' then 'Inpatient, Outpatient, and LTC'
     when meas='PCT_POS_CODE' or meas='PCT_POS_TYPE' then 'Inpatient, Outpatient, Professional, and LTC'
end as claimtype,
case when meas in('PCT_ID_MEDICAID','PCT_DOS_FROM','PCT_DOS_THRU','PCT_SERV_PROV_ID','PCT_SERV_PROV_ID_TYP',
                      'PCT_SERV_PROV_TYP','PCT_BILL_PROV_ID','PCT_BILL_PROV_ID_TYP','PCT_PRESCRIBE_PROV_ID',
                      'PCT_PRES_PROV_ID_TYP','PCT_PRIMARY_DIAG','PCT_ICD_VERSION','PCT_QTY_UNIT_BILL', 
                      'PCT_MEDICARE_CODE','PCT_AMT_GROSSPAY','PCT_AMT_PAYMCARE','PCT_SVC_CAT','PCT_PAT_PAYAMT',
                      'PCT_SCRIPT_WRITTEN','PCT_REFILL','PCT_SCRIPT','PCT_FEE','PCT_NDC',
                      'PCT_CLAIMCAT','PCT_RECIND','PCT_AMTBILL','PCT_AMTPAY','PCT_AMTALLOW','PCT_ADMITDT','PCT_DISCHARGEDT',
                      'PCT_DIAG_ADMIT','PCT_PATIENT_STATUS','PCT_ADMIT_TYPE','PCT_ADMIT_SOURCE','PCT_REV_CODE',
                      'PCT_POS_CODE','PCT_POS_TYPE','PCT_SERV_TAX_ID','PCT_BILL_TAX_ID','PCT_SERV_NPI','PCT_BILL_NPI')  
     then '98.0%'
     when meas in('PCT_DISPENSE','PCT_PROC_CODE_O','PCT_PROC_CODE_M','PCT_PROC_MOD_DME','PCT_PROC_MOD_LABXRAY',
                     'PCT_SERV_NAM_LAST','PCT_BILL_NAM_LAST','PCT_SERV_ADR_STRT','PCT_BILL_ADR_STRT',
                     'PCT_SERV_ADR_CITY','PCT_BILL_ADR_CITY','PCT_SERV_ADR_STATE','PCT_BILL_ADR_STATE',
                     'PCT_SERV_ADR_ZIP','PCT_BILL_ADR_ZIP','PCT_SERV_ADR_MAIL_STRT','PCT_BILL_ADR_MAIL_STRT',
                     'PCT_SERV_ADR_MAIL_CITY','PCT_BILL_ADR_MAIL_CITY','PCT_SERV_ADR_MAIL_STATE','PCT_BILL_ADR_MAIL_STATE',
                     'PCT_SERV_ADR_MAIL_ZIP','PCT_BILL_ADR_MAIL_ZIP','PCT_SERV_PANEL_OPEN','PCT_BILL_PANEL_OPEN',
                     'PCT_SERV_PC_ELIG_IND','PCT_BILL_PC_ELIG_IND') then '95.0%'
     when meas in('PCT_PROC_MOD_SURGERYM') then '25.0%'
     when meas in('PCT_SERV_PROV_SPEC','PCT_BILL_PROV_SPEC','PCT_SERV_APCD_ORGID','PCT_BILL_APCD_ORGID',
                     'PCT_SERV_PROV_BUNDLE_ID','PCT_BILL_PROV_BUNDLE_ID','PCT_SERV_IND_PRIM_ENC_PROV_LOC',
                     'PCT_BILL_IND_PRIM_ENC_PROV_LOC') then '50.0%'
end as benchmark,
case when meas='PCT_ID_MEDICAID' or meas ='PCT_DOS_FROM' or meas ='PCT_DOS_THRU' or 
          meas='PCT_SERV_PROV_ID' or meas ='PCT_SERV_PROV_ID_TYP' or meas ='PCT_SERV_PROV_TYP' or
          meas='PCT_SERV_PROV_SPEC' or meas ='PCT_BILL_PROV_SPEC' or meas ='PCT_BILL_PROV_ID' or meas ='PCT_BILL_PROV_ID_TYP' or  
          meas='PCT_MEDICARE_CODE' or meas='PCT_AMT_GROSSPAY' or 
          meas='PCT_AMT_PAYMCARE' or meas='PCT_SVC_CAT' or meas='PCT_PAT_PAYAMT' or meas='PCT_CLAIMCAT' or
          meas='PCT_RECIND' or meas='PCT_AMTBILL' or meas='PCT_AMTPAY' or meas='PCT_AMTALLOW' or
          meas='PCT_SERV_NAM_LAST' or meas='PCT_BILL_NAM_LAST' or
          meas='PCT_SERV_ADR_STRT' or meas='PCT_BILL_ADR_STRT' or meas='PCT_SERV_ADR_CITY' or
          meas='PCT_BILL_ADR_CITY' or meas='PCT_SERV_ADR_STATE' or meas='PCT_BILL_ADR_STATE' or 
          meas='PCT_SERV_ADR_ZIP' or meas='PCT_BILL_ADR_ZIP' or meas='PCT_SERV_ADR_MAIL_STRT' or
          meas='PCT_BILL_ADR_MAIL_STRT' or meas='PCT_SERV_ADR_MAIL_CITY' or meas='PCT_BILL_ADR_MAIL_CITY' or
          meas='PCT_SERV_ADR_MAIL_STATE' or meas='PCT_BILL_ADR_MAIL_STATE' or meas='PCT_SERV_ADR_MAIL_ZIP' or
          meas='PCT_BILL_ADR_MAIL_ZIP' or meas='PCT_SERV_PANEL_OPEN' or meas='PCT_BILL_PANEL_OPEN' or
          meas='PCT_SERV_NPI' or meas='PCT_BILL_NPI' or meas='PCT_SERV_TAX_ID' or meas='PCT_BILL_TAX_ID' or
          meas='PCT_SERV_TAX_ID' or meas='PCT_BILL_TAX_ID' or meas='PCT_SERV_PC_ELIG_IND' or 
          meas='PCT_BILL_PC_ELIG_IND' or meas='PCT_SERV_APCD_ORGID' or meas='PCT_BILL_APCD_ORGID' or
          meas='PCT_SERV_PROV_BUNDLE_ID' or meas='PCT_BILL_PROV_BUNDLE_ID' or 
          meas='PCT_SERV_IND_PRIM_ENC_PROV_LOC' or meas='PCT_BILL_IND_PRIM_ENC_PROV_LOC'
then 'TOT_REX'
when meas='PCT_QTY_UNIT_BILL' then 'TOT_NONPHARM' /*updated 6.28.18*/
when meas='PCT_PRESCRIBE_PROV_ID' or meas='PCT_PRES_PROV_ID_TYP' or meas='PCT_SCRIPT_WRITTEN' or
     meas='PCT_REFILL' or meas='PCT_DISPENSE' or meas='PCT_SCRIPT' or meas='PCT_FEE' then 'TOT_PHARM_SCRIPT'
when meas='PCT_NDC' then 'TOT_PHARMSCRIPT_NOTCOMP'
when meas='PCT_PRIMARY_DIAG' then 'TOT_NON_PHRM_DENTQ2'
when meas='PCT_ADMITDT' or meas='PCT_ADMIT_TYPE' or meas='PCT_ADMIT_SOURCE' then 'TOT_INPT_LTC'
when meas='PCT_PRIMARY_DIAG' then 'TOT_NON_PHRM_DENTQ2'
when meas='PCT_ICD_VERSION' then 'TOT_INP_OP_LTC_M_EXCQ2'
when meas='PCT_PROC_CODE_M' then 'TOT_MEDQ2'
when meas='PCT_PROC_CODE_O' then 'TOT_OUTPTQ2'
when meas='PCT_PROC_CODE_I' then 'TOT_INPTQ2'
when meas='PCT_PROC_MOD_DME' then 'TOT_MOD_DME'
when meas='PCT_PROC_MOD_LABXRAY' then 'TOT_MOD_LABXRAY'
when meas='PCT_PROC_MOD_SURGERYM' then 'TOT_MOD_SURGERYM'
when meas='PCT_POS_CODE' or meas='PCT_POS_TYPE' then 'TOT_NON_PHRM_DENT'
when meas='PCT_REV_CODE' then 'TOT_INOUTLTC_NOART'
when meas='PCT_PATIENT_STATUS' then 'TOT_INPT_OUTPT'
when meas='PCT_DIAG_ADMIT' then 'TOT_INPAT_FILTER2'
when meas='PCT_DISCHARGEDT' then 'TOT_INPAT_FILTER1'
end as claim_count,
BHP, CCA, NAV, SWH, TFT, UHC, MGS
from MHTEAM.DWDQ.INF_B_SC_~PN~_TRANSPOSE2_~MON~;

create table MHTEAM.DWDQ.INF_B_SC_~PN~_REP_STEP2_~MON~ 
as 
select 
rp1.meas as MEASURE,
rp1.claimtype,
--rp1.claim_count,
rp1.benchmark,
rp1.bhp,rp2.bhp  as bhp_denom, 
rp1.cca,rp2.cca  as cca_denom,
rp1.nav,rp2.nav  as nav_denom, 
rp1.swh,rp2. swh as swh_denom,
rp1.tft,rp2.tft  as tft_denom, 
rp1.uhc,rp2.uhc  as uhc_denom,
rp1.mgs,rp2.mgs  as mgs_denom
from MHTEAM.DWDQ.INF_B_SC_~PN~_REP_STEP1_~MON~ rp1 
inner join MHTEAM.DWDQ.INF_B_SC_~PN~_TRANSPOSE22_~MON~ rp2 
on rp1.claim_count=rp2.claim_count
ORDER BY MEAS, CLAIMTYPE;

-- not used in WO_MAPPLETS

--truncate table INF_B_SC_STG_SCO_TRANSPOSE1

insert into MHTEAM.DWDQ.INF_B_SC_STG_~PN~_TRANSPOSE1
select * from (
select
  CDE_ENC_MCO             ,
  PCT_ID_MEDICAID         ,
  PCT_DOS_FROM            ,
  PCT_DOS_THRU            ,
  PCT_SERV_PROV_ID        ,
  PCT_SERV_PROV_ID_TYP    ,
  PCT_SERV_PROV_TYP       ,
  PCT_SERV_PROV_SPEC      ,
  PCT_BILL_PROV_SPEC      ,
  PCT_BILL_PROV_ID        ,
  PCT_BILL_PROV_ID_TYP    ,
  PCT_PRESCRIBE_PROV_ID   ,
  PCT_PRES_PROV_ID_TYP    ,
  PCT_PRIMARY_DIAG        ,
  PCT_ICD_VERSION         ,
  PCT_PROC_CODE_O         ,
  PCT_PROC_CODE_M         ,
  PCT_PROC_MOD_DME        ,
  PCT_PROC_MOD_LABXRAY    ,
  PCT_PROC_MOD_SURGERYM   ,
  PCT_QTY_UNIT_BILL       ,
  PCT_MEDICARE_CODE       ,
  PCT_AMT_GROSSPAY        ,
  PCT_AMT_PAYMCARE        ,
  PCT_SVC_CAT             ,
  PCT_PAT_PAYAMT          ,
  PCT_SCRIPT_WRITTEN      ,
  PCT_REFILL              ,
  PCT_DISPENSE            ,
  PCT_SCRIPT              ,
  PCT_FEE                 ,
  PCT_NDC                 ,
  PCT_CLAIMCAT            ,
  PCT_RECIND              ,
  PCT_AMTBILL             ,
  PCT_AMTPAY              ,
  PCT_AMTALLOW            ,
  PCT_ADMITDT             ,
  PCT_DISCHARGEDT         ,
  PCT_DIAG_ADMIT          ,
  PCT_PATIENT_STATUS      ,
  PCT_ADMIT_TYPE          ,
  PCT_ADMIT_SOURCE        ,
  PCT_REV_CODE            ,
  PCT_POS_CODE            ,
  PCT_POS_TYPE            ,
  PCT_SERV_NAM_LAST       ,
  PCT_BILL_NAM_LAST       ,
  PCT_SERV_ADR_STRT       ,
  PCT_BILL_ADR_STRT       ,
  PCT_SERV_ADR_CITY       ,
  PCT_BILL_ADR_CITY       ,
  PCT_SERV_ADR_STATE      ,
  PCT_BILL_ADR_STATE      ,
  PCT_SERV_ADR_ZIP        ,
  PCT_BILL_ADR_ZIP        ,
  PCT_SERV_ADR_MAIL_STRT  ,
  PCT_BILL_ADR_MAIL_STRT  ,
  PCT_SERV_ADR_MAIL_CITY  ,
  PCT_BILL_ADR_MAIL_CITY  ,
  PCT_SERV_ADR_MAIL_STATE ,
  PCT_BILL_ADR_MAIL_STATE ,
  PCT_SERV_ADR_MAIL_ZIP   ,
  PCT_BILL_ADR_MAIL_ZIP   ,
  PCT_SERV_PANEL_OPEN     ,
  PCT_BILL_PANEL_OPEN     ,
  PCT_SERV_NPI_SCO AS PCT_SERV_NPI            ,
  PCT_BILL_NPI_SCO AS PCT_BILL_NPI            ,
  PCT_SERV_TAX_ID         ,
  PCT_BILL_TAX_ID         ,
  PCT_SERV_PC_ELIG_IND    ,
  PCT_BILL_PC_ELIG_IND    ,
  PCT_SERV_APCD_ORGID     ,
  PCT_BILL_APCD_ORGID     ,
  PCT_SERV_PROV_BUNDLE_ID ,
  PCT_BILL_PROV_BUNDLE_ID ,
  PCT_SERV_IND_PRIM_ENC_PROV_LOC ,
  PCT_BILL_IND_PRIM_ENC_PROV_LOC 

from MHTEAM.DWDQ.INF_B_SC_STG_~PN~_PTPDOS
) s
unpivot (
 actuals for MEAS in (
  PCT_ID_MEDICAID         ,
  PCT_DOS_FROM            ,
  PCT_DOS_THRU            ,
  PCT_SERV_PROV_ID        ,
  PCT_SERV_PROV_ID_TYP    ,
  PCT_SERV_PROV_TYP       ,
  PCT_SERV_PROV_SPEC      ,
  PCT_BILL_PROV_SPEC      ,
  PCT_BILL_PROV_ID        ,
  PCT_BILL_PROV_ID_TYP    ,
  PCT_PRESCRIBE_PROV_ID   ,
  PCT_PRES_PROV_ID_TYP    ,
  PCT_PRIMARY_DIAG        ,
  PCT_ICD_VERSION         ,
  PCT_PROC_CODE_O         ,
  PCT_PROC_CODE_M         ,
  PCT_PROC_MOD_DME        ,
  PCT_PROC_MOD_LABXRAY    ,
  PCT_PROC_MOD_SURGERYM   ,
  PCT_QTY_UNIT_BILL       ,
  PCT_MEDICARE_CODE       ,
  PCT_AMT_GROSSPAY        ,
  PCT_AMT_PAYMCARE        ,
  PCT_SVC_CAT             ,
  PCT_PAT_PAYAMT          ,
  PCT_SCRIPT_WRITTEN      ,
  PCT_REFILL              ,
  PCT_DISPENSE            ,
  PCT_SCRIPT              ,
  PCT_FEE                 ,
  PCT_NDC                 ,
  PCT_CLAIMCAT            ,
  PCT_RECIND              ,
  PCT_AMTBILL             ,
  PCT_AMTPAY              ,
  PCT_AMTALLOW            ,
  PCT_ADMITDT             ,
  PCT_DISCHARGEDT         ,
  PCT_DIAG_ADMIT          ,
  PCT_PATIENT_STATUS      ,
  PCT_ADMIT_TYPE          ,
  PCT_ADMIT_SOURCE        ,
  PCT_REV_CODE            ,
  PCT_POS_CODE            ,
  PCT_POS_TYPE            ,
  PCT_SERV_NAM_LAST       ,
  PCT_BILL_NAM_LAST       ,
  PCT_SERV_ADR_STRT       ,
  PCT_BILL_ADR_STRT       ,
  PCT_SERV_ADR_CITY       ,
  PCT_BILL_ADR_CITY       ,
  PCT_SERV_ADR_STATE      ,
  PCT_BILL_ADR_STATE      ,
  PCT_SERV_ADR_ZIP        ,
  PCT_BILL_ADR_ZIP        ,
  PCT_SERV_ADR_MAIL_STRT  ,
  PCT_BILL_ADR_MAIL_STRT  ,
  PCT_SERV_ADR_MAIL_CITY  ,
  PCT_BILL_ADR_MAIL_CITY  ,
  PCT_SERV_ADR_MAIL_STATE ,
  PCT_BILL_ADR_MAIL_STATE ,
  PCT_SERV_ADR_MAIL_ZIP   ,
  PCT_BILL_ADR_MAIL_ZIP   ,
  PCT_SERV_PANEL_OPEN     ,
  PCT_BILL_PANEL_OPEN     ,
  PCT_SERV_NPI            ,
  PCT_BILL_NPI            ,
  PCT_SERV_TAX_ID         ,
  PCT_BILL_TAX_ID         ,
  PCT_SERV_PC_ELIG_IND    ,
  PCT_BILL_PC_ELIG_IND    ,
  PCT_SERV_APCD_ORGID     ,
  PCT_BILL_APCD_ORGID     ,
  PCT_SERV_PROV_BUNDLE_ID ,
  PCT_BILL_PROV_BUNDLE_ID ,
  PCT_SERV_IND_PRIM_ENC_PROV_LOC ,
  PCT_BILL_IND_PRIM_ENC_PROV_LOC 
 ))
order by
CDE_ENC_MCO;

--truncate table MHTEAM.DWDQ.INF_B_SC_STG_SCO_TRANSPOSE2

insert into MHTEAM.DWDQ.INF_B_SC_STG_~PN~_TRANSPOSE2
SELECT MEAS, 
       "'BHP'" AS BHP, 
       "'CCA'" AS CCA, 
       "'NAV'" AS NAV, 
       "'SWH'" AS SWH, 
       "'TFT'" AS TFT,
       "'UHC'" AS UHC,
       "'MGS'" AS MGS
FROM (
    SELECT * FROM MHTEAM.DWDQ.INF_B_SC_STG_~PN~_TRANSPOSE1
    PIVOT
    (
        SUM(actuals)
        FOR cde_enc_mco IN ( 'BHP', 'CCA', 'NAV', 'SWH', 'TFT', 'UHC', 'MGS' )
    )
)
ORDER BY meas;

insert into MHTEAM.DWDQ.INF_B_SC_STG_~PN~_TRANSPOSE21
select * from (
select
  CDE_ENC_MCO,
  CAST(TOT_NONART AS NUMBER(15)) AS TOT_NONART,
  CAST(TOT_INPAT AS NUMBER(15)) AS TOT_INPAT,
  CAST(TOT_PHARM AS NUMBER(15)) AS TOT_PHARM,
  CAST(TOT_OUTPT AS NUMBER(15)) AS TOT_OUTPT,
  CAST(TOT_OUTPTQ2 AS NUMBER(15)) AS TOT_OUTPTQ2,
  CAST(TOT_DENT AS NUMBER(15)) AS TOT_DENT,
  CAST(TOT_DENTQ2 AS NUMBER(15)) AS TOT_DENTQ2,
  CAST(TOT_MED AS NUMBER(15)) AS TOT_MED,
  CAST(TOT_MEDQ2 AS NUMBER(15)) AS TOT_MEDQ2,
  CAST(TOT_NON_PHRM_DENTQ2 AS NUMBER(15)) AS TOT_NON_PHRM_DENTQ2,
  CAST(TOT_PHARM_SCRIPT AS NUMBER(15)) AS TOT_PHARM_SCRIPT,
  CAST(TOT_NONPHARM AS NUMBER(15)) AS TOT_NONPHARM,
  CAST(TOT_INPT_LTC AS NUMBER(15)) AS TOT_INPT_LTC,
  CAST(TOT_INPT_OUTPT_LTC AS NUMBER(15)) AS TOT_INPT_OUTPT_LTC,
  CAST(TOT_INP_OP_LTC_M_EXCQ2 AS NUMBER(15)) AS TOT_INP_OP_LTC_M_EXCQ2,
  CAST(TOT_NON_PHRM_DENT AS NUMBER(15)) AS TOT_NON_PHRM_DENT,
  CAST(TOT_INPAT_FILTER1 AS NUMBER(15)) AS TOT_INPAT_FILTER1,
  CAST(TOT_INPAT_FILTER2 AS NUMBER(15)) AS TOT_INPAT_FILTER2,
  CAST(TOT_INPTQ2 AS NUMBER(15)) AS TOT_INPTQ2,
  CAST(TOT_MOD_DME AS NUMBER(15)) AS TOT_MOD_DME,
  CAST(TOT_MOD_LABXRAY AS NUMBER(15)) AS TOT_MOD_LABXRAY,
  CAST(TOT_MOD_SURGERYM AS NUMBER(15)) AS TOT_MOD_SURGERYM,
  CAST(TOT_PHARMSCRIPT_NOTCOMP AS NUMBER(15)) AS TOT_PHARMSCRIPT_NOTCOMP,
  CAST(TOT_INOUTLTC_NOART AS NUMBER(15)) AS TOT_INOUTLTC_NOART,
  CAST(TOT_INPT_OUTPT AS NUMBER(15)) AS TOT_INPT_OUTPT,
  CAST(TOT_RECORDS AS NUMBER(15)) AS TOT_REX
from MHTEAM.DWDQ.INF_B_SC_STG_~PN~_PTPDOS
) s
unpivot (
 claim_count for Meas in (
  TOT_NONART              ,
  TOT_INPAT               ,
  TOT_PHARM               ,
  TOT_OUTPT               ,
  TOT_OUTPTQ2             ,
  TOT_DENT                ,
  TOT_DENTQ2              ,
  TOT_MED                 ,
  TOT_MEDQ2               ,
  TOT_NON_PHRM_DENTQ2     ,
  TOT_PHARM_SCRIPT        ,
  TOT_NONPHARM            ,
  TOT_INPT_LTC            ,
  TOT_INPT_OUTPT_LTC      ,
  TOT_INP_OP_LTC_M_EXCQ2  ,
  TOT_NON_PHRM_DENT       ,
  TOT_INPAT_FILTER1       ,
  TOT_INPAT_FILTER2       ,
  TOT_INPTQ2              ,
  TOT_MOD_DME             ,
  TOT_MOD_LABXRAY         ,
  TOT_MOD_SURGERYM        ,
  TOT_PHARMSCRIPT_NOTCOMP ,
  TOT_INOUTLTC_NOART      ,
  TOT_INPT_OUTPT          ,
  TOT_REX
 ))
order by
CDE_ENC_MCO;

--truncate table MHTEAM.DWDQ.INF_B_SC_STG_SCO_TRANSPOSE22

insert into MHTEAM.DWDQ.INF_B_SC_STG_~PN~_TRANSPOSE22
SELECT MEAS AS CLAIM_COUNT, 
       "'BHP'" AS BHP, 
       "'CCA'" AS CCA, 
       "'NAV'" AS NAV, 
       "'SWH'" AS SWH, 
       "'TFT'" AS TFT,
       "'UHC'" AS UHC,
       "'MGS'" AS MGS
FROM (
    SELECT * FROM MHTEAM.DWDQ.INF_B_SC_STG_~PN~_TRANSPOSE21
    PIVOT
    (
        SUM(claim_count)
        FOR cde_enc_mco IN ( 'BHP', 'CCA', 'NAV', 'SWH', 'TFT', 'UHC', 'MGS' )
    )
)
ORDER BY meas;

--truncate table INF_B_SC_STG_SCO_REP_STEP1

insert into MHTEAM.DWDQ.INF_B_SC_STG_~PN~_REP_STEP1
select 
case when meas='PCT_CLAIMCAT' then '2 Claim Category'
     when meas='PCT_RECIND' then '4 Record Indicator'
     when meas='PCT_DOS_FROM' then '17 From Service Date'
     when meas='PCT_DOS_THRU' then '18 To Service Date'
     when meas='PCT_PRIMARY_DIAG' then '19 Primary Diagnosis'
     when meas='PCT_PROC_CODE_O' then '26 Procedure Code Outpt'
     when meas='PCT_PROC_CODE_M' then '26 Procedure Code Prof_M'
     /*when meas='PCT_PROC_CODE_I' then '26 Procedure Code Inpt'*/ /*removed from reporting*/
     when meas='PCT_PROC_MOD_DME' then '27 Procedure Modifier DME'     
     when meas='PCT_PROC_MOD_LABXRAY' then '27 Procedure Modifier LabXray'
     when meas='PCT_PROC_MOD_SURGERYM' then '27 Procedure Modifier Surgery Prof_M'
     when meas='PCT_QTY_UNIT_BILL' then '36 Quantity'
     when meas='PCT_AMTPAY' then '68 Net Payment'
     when meas='PCT_ID_MEDICAID' then '76 New Member ID'
     when meas='PCT_MEDICARE_CODE' then '11 Medicare Code'
     when meas='PCT_REV_CODE' then '31 Revenue Code'
     when meas='PCT_POS_CODE' then '32 Place of Service'
     when meas='PCT_POS_TYPE' then '33 Place of Service Type'
     when meas='PCT_AMTBILL' then '60 Billed Charge'
     when meas='PCT_AMT_GROSSPAY' then '61 Gross Payment Amount'
     when meas='PCT_AMT_PAYMCARE' then '63 Medicare Amount'
     when meas='PCT_SVC_CAT' then '80 Service Category'
     when meas='PCT_AMTALLOW' then '86 Allowable Amount'
     when meas='PCT_ICD_VERSION' then '193 ICD Version Qualifier'
     when meas='PCT_ADMITDT' then '15 Admission Date'
     when meas='PCT_DISCHARGEDT' then '16 Discharge Date'
     when meas='PCT_ADMIT_TYPE' then '24    Type of Admission'
     when meas='PCT_NDC' then '37 NDC Number' 
     when meas='PCT_SERV_PROV_ID' then '50 Servicing Provider ID'
     when meas='PCT_SERV_PROV_ID_TYP' then '51 Servicing Provider ID Type'
     when meas='PCT_SERV_PROV_TYP' then '55 Servicing Provider Type'
     when meas='PCT_SERV_PROV_SPEC' then '56 Servicing Provider Specialty'
     when meas='PCT_BILL_PROV_ID' then '58 Billing Provider ID'
     when meas='PCT_BILL_PROV_ID_TYP' then '93 Billing Provider ID Type'
     when meas='PCT_BILL_PROV_SPEC' then ' Billing Provider Specialty'
     when meas='PCT_PATIENT_STATUS' then '34 Patient Discharge Status'
     when meas='PCT_DIAG_ADMIT' then '85 Admitting Diagnosis'
     when meas='PCT_PAT_PAYAMT' then '124 Patient Pay Amount'
     when meas='PCT_ADMIT_SOURCE' then '25 Source of Admission'
     when meas='PCT_PRESCRIBE_PROV_ID' then '81 Prescribing Prov. ID'
     when meas='PCT_PRES_PROV_ID_TYP' then '94 Prescribing Prov. ID Type'
     when meas='PCT_REFILL' then '40 Refill Indicator'
     when meas='PCT_DISPENSE' then '41 Dispense as Written Indicator'
     when meas='PCT_FEE' then '67 Dispensing Fee'
     when meas='PCT_SCRIPT_WRITTEN' then '82 Date Script Written'
     when meas='PCT_SCRIPT' then '198 Prescription Number'
     when meas='PCT_SERV_NAM_LAST' then '6 Servicing Provider Last Name'
     when meas='PCT_BILL_NAM_LAST' then '6 Billing Provider Last Name'
     when meas='PCT_SERV_ADR_STRT' then '8 Servicing Provider Street Address'
     when meas='PCT_BILL_ADR_STRT' then '8 Billing Provider Street Address'
     when meas='PCT_SERV_ADR_CITY' then '9 Servicing Provider City Address'
     when meas='PCT_BILL_ADR_CITY' then '9 Billing Provider City Address'
     when meas='PCT_SERV_ADR_STATE' then '10 Servicing Provider State Address'
     when meas='PCT_BILL_ADR_STATE' then '10 Billing Provider State Address'
     when meas='PCT_SERV_ADR_ZIP' then '11 Servicing Provider Zip Address'
     when meas='PCT_BILL_ADR_ZIP' then '11 Billing Provider Zip Address'
     when meas='PCT_SERV_ADR_MAIL_STRT' then '12 Servicing Provider Street Mailing Address'
     when meas='PCT_BILL_ADR_MAIL_STRT' then '12 Billing Provider Street Mailing Address'
     when meas='PCT_SERV_ADR_MAIL_CITY' then '13 Servicing Provider City Mailing Address'
     when meas='PCT_BILL_ADR_MAIL_CITY' then '13 Billing Provider City Mailing Address'
     when meas='PCT_SERV_ADR_MAIL_STATE' then '14 Servicing Provider State Mailing Address'
     when meas='PCT_BILL_ADR_MAIL_STATE' then '14 Billing Provider State Mailing Address'
     when meas='PCT_SERV_ADR_MAIL_ZIP' then '15 Servicing Provider Zip Mailing Address'
     when meas='PCT_BILL_ADR_MAIL_ZIP' then '15 Billing Provider Zip Mailing Address'
     when meas='PCT_SERV_PANEL_OPEN' then '23 Servicing Provider Accepting New Patients'
     when meas='PCT_BILL_PANEL_OPEN' then '23 Billing Provider Accepting New Patients'
     when meas='PCT_SERV_NPI' then '26 Servicing Provider NPI'
     when meas='PCT_BILL_NPI' then '26 Billing Provider NPI'
     when meas='PCT_SERV_TAX_ID' then '30 Servicing Tax ID'
     when meas='PCT_BILL_TAX_ID' then '30 Billing Tax ID'
     when meas='PCT_SERV_PC_ELIG_IND' then '33 Servicing Provider Primary Care Eligibility Ind'
     when meas='PCT_BILL_PC_ELIG_IND' then '33 Billing Provider Primary Care Eligibility Ind'
     when meas='PCT_SERV_APCD_ORGID' then '34 Servicing Provider APCD Organization ID'
     when meas='PCT_BILL_APCD_ORGID' then '34 Billing Provider APCD Organization ID'
     when meas='PCT_SERV_PROV_BUNDLE_ID' then '40 Servicing Provider Bundle ID'
     when meas='PCT_BILL_PROV_BUNDLE_ID' then '40 Billing Provider Bundle ID' 
     when meas='PCT_SERV_IND_PRIM_ENC_PROV_LOC' then '41 Servicing Provider Primary Address Location Indicator'
     when meas='PCT_BILL_IND_PRIM_ENC_PROV_LOC' then '41 Billing Provider Primary Address Location Indicator'
end as meas,
case when meas='PCT_ID_MEDICAID' or meas ='PCT_DOS_FROM' or meas ='PCT_DOS_THRU' or 
          meas='PCT_SERV_PROV_ID' or meas ='PCT_SERV_PROV_ID_TYP' or meas ='PCT_SERV_PROV_TYP' or
          meas='PCT_SERV_PROV_SPEC' or meas ='PCT_BILL_PROV_ID' or meas ='PCT_BILL_PROV_ID_TYP' or  
          meas='PCT_BILL_PROV_SPEC' or meas='PCT_MEDICARE_CODE' or
          meas='PCT_AMT_GROSSPAY' or meas='PCT_AMT_PAYMCARE' or meas='PCT_SVC_CAT' or
          meas='PCT_PAT_PAYAMT' or meas='PCT_CLAIMCAT' or meas='PCT_RECIND' or meas='PCT_AMTBILL' or 
          meas='PCT_AMTPAY' or meas='PCT_AMTALLOW' or meas='PCT_SERV_NAM_LAST' or meas='PCT_BILL_NAM_LAST' or
          meas='PCT_SERV_ADR_STRT' or meas='PCT_BILL_ADR_STRT' or meas='PCT_SERV_ADR_CITY' or
          meas='PCT_BILL_ADR_CITY' or meas='PCT_SERV_ADR_STATE' or meas='PCT_BILL_ADR_STATE' or 
          meas='PCT_SERV_ADR_ZIP' or meas='PCT_BILL_ADR_ZIP' or meas='PCT_SERV_ADR_MAIL_STRT' or
          meas='PCT_BILL_ADR_MAIL_STRT' or meas='PCT_SERV_ADR_MAIL_CITY' or meas='PCT_BILL_ADR_MAIL_CITY' or
          meas='PCT_SERV_ADR_MAIL_STATE' or meas='PCT_BILL_ADR_MAIL_STATE' or meas='PCT_SERV_ADR_MAIL_ZIP' or
          meas='PCT_BILL_ADR_MAIL_ZIP' or meas='PCT_SERV_PANEL_OPEN' or meas='PCT_BILL_PANEL_OPEN' or
          meas='PCT_SERV_NPI' or meas='PCT_BILL_NPI' or meas='PCT_SERV_TAX_ID' or meas='PCT_BILL_TAX_ID' or
          meas='PCT_SERV_TAX_ID' or meas='PCT_BILL_TAX_ID' or meas='PCT_SERV_PC_ELIG_IND' or 
          meas='PCT_BILL_PC_ELIG_IND' or meas='PCT_SERV_APCD_ORGID' or meas='PCT_BILL_APCD_ORGID' or
          meas='PCT_SERV_PROV_BUNDLE_ID' or meas='PCT_BILL_PROV_BUNDLE_ID' or meas='PCT_SERV_IND_PRIM_ENC_PROV_LOC' or
          meas='PCT_BILL_IND_PRIM_ENC_PROV_LOC'
     then 'All Claim Types' 
     when meas='PCT_QTY_UNIT_BILL' then 'Non-Pharmacy Claims' /*updated 6.28.18*/
     when meas='PCT_PRESCRIBE_PROV_ID' or meas='PCT_PRES_PROV_ID_TYP' or meas='PCT_SCRIPT_WRITTEN' or
          meas='PCT_REFILL' or meas='PCT_DISPENSE' or meas='PCT_SCRIPT' or meas='PCT_FEE' 
     then 'Pharmacy (prescriptions only, not OTC)'
     when meas='PCT_NDC' then 'Pharmacy (prescriptions only, not OTC and not compounded)'
     when meas='PCT_PRIMARY_DIAG' or meas='PCT_ICD_VERSION' then 'Inpatient, Outpatient, Professional, and LTC'
     when meas='PCT_PROC_CODE_O' then 'Outpatient' 
     when meas='PCT_PROC_CODE_M' or meas='PCT_PROC_MOD_LABXRAY' or meas='PCT_PROC_MOD_SURGERYM' then 'Professional'
     when meas='PCT_PROC_MOD_DME' then 'Professional (modifier=DME)'
     when meas='PCT_ADMITDT' or meas='PCT_ADMIT_TYPE' or meas='PCT_ADMIT_SOURCE' then 'Inpatient and LTC'
     when meas='PCT_DISCHARGEDT' or meas='PCT_DIAG_ADMIT' then 'Inpatient'
     when meas='PCT_PATIENT_STATUS' then 'Inpatient and Outpatient'
     when meas='PCT_REV_CODE' then 'Inpatient, Outpatient, and LTC'
     when meas='PCT_POS_CODE' or meas='PCT_POS_TYPE' then 'Inpatient, Outpatient, Professional, and LTC'
end as claimtype,
case when meas in('PCT_ID_MEDICAID','PCT_DOS_FROM','PCT_DOS_THRU','PCT_SERV_PROV_ID','PCT_SERV_PROV_ID_TYP',
                      'PCT_SERV_PROV_TYP','PCT_BILL_PROV_ID','PCT_BILL_PROV_ID_TYP','PCT_PRESCRIBE_PROV_ID',
                      'PCT_PRES_PROV_ID_TYP','PCT_PRIMARY_DIAG','PCT_ICD_VERSION','PCT_QTY_UNIT_BILL', 
                      'PCT_MEDICARE_CODE','PCT_AMT_GROSSPAY','PCT_AMT_PAYMCARE','PCT_SVC_CAT','PCT_PAT_PAYAMT',
                      'PCT_SCRIPT_WRITTEN','PCT_REFILL','PCT_SCRIPT','PCT_FEE','PCT_NDC',
                      'PCT_CLAIMCAT','PCT_RECIND','PCT_AMTBILL','PCT_AMTPAY','PCT_AMTALLOW','PCT_ADMITDT','PCT_DISCHARGEDT',
                      'PCT_DIAG_ADMIT','PCT_PATIENT_STATUS','PCT_ADMIT_TYPE','PCT_ADMIT_SOURCE','PCT_REV_CODE',
                      'PCT_POS_CODE','PCT_POS_TYPE','PCT_SERV_TAX_ID','PCT_BILL_TAX_ID','PCT_SERV_NPI','PCT_BILL_NPI')  
     then '98.0%'
     when meas in('PCT_DISPENSE','PCT_PROC_CODE_O','PCT_PROC_CODE_M','PCT_PROC_MOD_DME','PCT_PROC_MOD_LABXRAY',
                     'PCT_SERV_NAM_LAST','PCT_BILL_NAM_LAST','PCT_SERV_ADR_STRT','PCT_BILL_ADR_STRT',
                     'PCT_SERV_ADR_CITY','PCT_BILL_ADR_CITY','PCT_SERV_ADR_STATE','PCT_BILL_ADR_STATE',
                     'PCT_SERV_ADR_ZIP','PCT_BILL_ADR_ZIP','PCT_SERV_ADR_MAIL_STRT','PCT_BILL_ADR_MAIL_STRT',
                     'PCT_SERV_ADR_MAIL_CITY','PCT_BILL_ADR_MAIL_CITY','PCT_SERV_ADR_MAIL_STATE','PCT_BILL_ADR_MAIL_STATE',
                     'PCT_SERV_ADR_MAIL_ZIP','PCT_BILL_ADR_MAIL_ZIP','PCT_SERV_PANEL_OPEN','PCT_BILL_PANEL_OPEN',
                     'PCT_SERV_PC_ELIG_IND','PCT_BILL_PC_ELIG_IND') then '95.0%'
     when meas in('PCT_PROC_MOD_SURGERYM') then '25.0%'
     when meas in('PCT_SERV_PROV_SPEC','PCT_BILL_PROV_SPEC','PCT_SERV_APCD_ORGID','PCT_BILL_APCD_ORGID',
                     'PCT_SERV_PROV_BUNDLE_ID','PCT_BILL_PROV_BUNDLE_ID','PCT_SERV_IND_PRIM_ENC_PROV_LOC',
                     'PCT_BILL_IND_PRIM_ENC_PROV_LOC') then '50.0%'
end as benchmark,
case when meas='PCT_ID_MEDICAID' or meas ='PCT_DOS_FROM' or meas ='PCT_DOS_THRU' or 
          meas='PCT_SERV_PROV_ID' or meas ='PCT_SERV_PROV_ID_TYP' or meas ='PCT_SERV_PROV_TYP' or
          meas='PCT_SERV_PROV_SPEC' or meas ='PCT_BILL_PROV_SPEC' or meas ='PCT_BILL_PROV_ID' or meas ='PCT_BILL_PROV_ID_TYP' or  
          meas='PCT_MEDICARE_CODE' or meas='PCT_AMT_GROSSPAY' or 
          meas='PCT_AMT_PAYMCARE' or meas='PCT_SVC_CAT' or meas='PCT_PAT_PAYAMT' or meas='PCT_CLAIMCAT' or
          meas='PCT_RECIND' or meas='PCT_AMTBILL' or meas='PCT_AMTPAY' or meas='PCT_AMTALLOW' or
          meas='PCT_SERV_NAM_LAST' or meas='PCT_BILL_NAM_LAST' or
          meas='PCT_SERV_ADR_STRT' or meas='PCT_BILL_ADR_STRT' or meas='PCT_SERV_ADR_CITY' or
          meas='PCT_BILL_ADR_CITY' or meas='PCT_SERV_ADR_STATE' or meas='PCT_BILL_ADR_STATE' or 
          meas='PCT_SERV_ADR_ZIP' or meas='PCT_BILL_ADR_ZIP' or meas='PCT_SERV_ADR_MAIL_STRT' or
          meas='PCT_BILL_ADR_MAIL_STRT' or meas='PCT_SERV_ADR_MAIL_CITY' or meas='PCT_BILL_ADR_MAIL_CITY' or
          meas='PCT_SERV_ADR_MAIL_STATE' or meas='PCT_BILL_ADR_MAIL_STATE' or meas='PCT_SERV_ADR_MAIL_ZIP' or
          meas='PCT_BILL_ADR_MAIL_ZIP' or meas='PCT_SERV_PANEL_OPEN' or meas='PCT_BILL_PANEL_OPEN' or
          meas='PCT_SERV_NPI' or meas='PCT_BILL_NPI' or meas='PCT_SERV_TAX_ID' or meas='PCT_BILL_TAX_ID' or
          meas='PCT_SERV_TAX_ID' or meas='PCT_BILL_TAX_ID' or meas='PCT_SERV_PC_ELIG_IND' or 
          meas='PCT_BILL_PC_ELIG_IND' or meas='PCT_SERV_APCD_ORGID' or meas='PCT_BILL_APCD_ORGID' or
          meas='PCT_SERV_PROV_BUNDLE_ID' or meas='PCT_BILL_PROV_BUNDLE_ID' or 
          meas='PCT_SERV_IND_PRIM_ENC_PROV_LOC' or meas='PCT_BILL_IND_PRIM_ENC_PROV_LOC'
then 'TOT_REX'
when meas='PCT_QTY_UNIT_BILL' then 'TOT_NONPHARM' /*updated 6.28.18*/
when meas='PCT_PRESCRIBE_PROV_ID' or meas='PCT_PRES_PROV_ID_TYP' or meas='PCT_SCRIPT_WRITTEN' or
     meas='PCT_REFILL' or meas='PCT_DISPENSE' or meas='PCT_SCRIPT' or meas='PCT_FEE' then 'TOT_PHARM_SCRIPT'
when meas='PCT_NDC' then 'TOT_PHARMSCRIPT_NOTCOMP'
when meas='PCT_PRIMARY_DIAG' then 'TOT_NON_PHRM_DENTQ2'
when meas='PCT_ADMITDT' or meas='PCT_ADMIT_TYPE' or meas='PCT_ADMIT_SOURCE' then 'TOT_INPT_LTC'
when meas='PCT_PRIMARY_DIAG' then 'TOT_NON_PHRM_DENTQ2'
when meas='PCT_ICD_VERSION' then 'TOT_INP_OP_LTC_M_EXCQ2'
when meas='PCT_PROC_CODE_M' then 'TOT_MEDQ2'
when meas='PCT_PROC_CODE_O' then 'TOT_OUTPTQ2'
when meas='PCT_PROC_CODE_I' then 'TOT_INPTQ2'
when meas='PCT_PROC_MOD_DME' then 'TOT_MOD_DME'
when meas='PCT_PROC_MOD_LABXRAY' then 'TOT_MOD_LABXRAY'
when meas='PCT_PROC_MOD_SURGERYM' then 'TOT_MOD_SURGERYM'
when meas='PCT_POS_CODE' or meas='PCT_POS_TYPE' then 'TOT_NON_PHRM_DENT'
when meas='PCT_REV_CODE' then 'TOT_INOUTLTC_NOART'
when meas='PCT_PATIENT_STATUS' then 'TOT_INPT_OUTPT'
when meas='PCT_DIAG_ADMIT' then 'TOT_INPAT_FILTER2'
when meas='PCT_DISCHARGEDT' then 'TOT_INPAT_FILTER1'
end as claim_count,
case when meas='PCT_CLAIMCAT' then 8
     when meas='PCT_RECIND' then 26
     when meas='PCT_DOS_FROM' then 13
     when meas='PCT_DOS_THRU' then 35
     when meas='PCT_PRIMARY_DIAG' then 23
     when meas='PCT_PROC_CODE_O' then 40
     when meas='PCT_PROC_CODE_M' then 24
     when meas='PCT_PROC_MOD_DME' then 41     
     when meas='PCT_PROC_MOD_LABXRAY' then 42
     when meas='PCT_PROC_MOD_SURGERYM' then 43
     when meas='PCT_QTY_UNIT_BILL' then 25
     when meas='PCT_AMTPAY' then 16
     when meas='PCT_ID_MEDICAID' then 17
     when meas='PCT_MEDICARE_CODE' then 44
     when meas='PCT_REV_CODE' then 28
     when meas='PCT_POS_CODE' then 19
     when meas='PCT_POS_TYPE' then 37
     when meas='PCT_AMTBILL' then 4
     when meas='PCT_AMT_GROSSPAY' then 45
     when meas='PCT_AMT_PAYMCARE' then 7
     when meas='PCT_SVC_CAT' then 29
     when meas='PCT_AMTALLOW' then 3
     when meas='PCT_ICD_VERSION' then 14
     when meas='PCT_ADMITDT' then 1
     when meas='PCT_DISCHARGEDT' then 10
     when meas='PCT_ADMIT_TYPE' then 36
     when meas='PCT_NDC' then 15
     when meas='PCT_SERV_PROV_ID' then 31
     when meas='PCT_SERV_PROV_ID_TYP' then 32
     when meas='PCT_SERV_PROV_TYP' then 33
     when meas='PCT_SERV_PROV_SPEC' then 38
     when meas='PCT_BILL_PROV_ID' then 5
     when meas='PCT_BILL_PROV_ID_TYP' then 6
     when meas='PCT_BILL_PROV_SPEC' then 39
     when meas='PCT_PATIENT_STATUS' then 18
     when meas='PCT_DIAG_ADMIT' then 2
     when meas='PCT_PAT_PAYAMT' then 30
     when meas='PCT_ADMIT_SOURCE' then 34
     when meas='PCT_PRESCRIBE_PROV_ID' then 20
     when meas='PCT_PRES_PROV_ID_TYP' then 21
     when meas='PCT_REFILL' then 27
     when meas='PCT_DISPENSE' then 11
     when meas='PCT_FEE' then 12
     when meas='PCT_SCRIPT_WRITTEN' then 9
     when meas='PCT_SCRIPT' then 22
     when meas='PCT_SERV_NAM_LAST' then 46
     when meas='PCT_BILL_NAM_LAST' then 47
     when meas='PCT_SERV_ADR_STRT' then 48
     when meas='PCT_BILL_ADR_STRT' then 49
     when meas='PCT_SERV_ADR_CITY' then 50
     when meas='PCT_BILL_ADR_CITY' then 51
     when meas='PCT_SERV_ADR_STATE' then 52
     when meas='PCT_BILL_ADR_STATE' then 53
     when meas='PCT_SERV_ADR_ZIP' then 54
     when meas='PCT_BILL_ADR_ZIP' then 55
     when meas='PCT_SERV_ADR_MAIL_STRT' then 56
     when meas='PCT_BILL_ADR_MAIL_STRT' then 57
     when meas='PCT_SERV_ADR_MAIL_CITY' then 58
     when meas='PCT_BILL_ADR_MAIL_CITY' then 59
     when meas='PCT_SERV_ADR_MAIL_STATE' then 60
     when meas='PCT_BILL_ADR_MAIL_STATE' then 61
     when meas='PCT_SERV_ADR_MAIL_ZIP' then 62
     when meas='PCT_BILL_ADR_MAIL_ZIP' then 63
     when meas='PCT_SERV_PANEL_OPEN' then 64
     when meas='PCT_BILL_PANEL_OPEN' then 65
     when meas='PCT_SERV_NPI' then 66
     when meas='PCT_BILL_NPI' then 67
     when meas='PCT_SERV_TAX_ID' then 68
     when meas='PCT_BILL_TAX_ID' then 69
     when meas='PCT_SERV_PC_ELIG_IND' then 70
     when meas='PCT_BILL_PC_ELIG_IND' then 71
     when meas='PCT_SERV_APCD_ORGID' then 72
     when meas='PCT_BILL_APCD_ORGID' then 73
     when meas='PCT_SERV_PROV_BUNDLE_ID' then 74
     when meas='PCT_BILL_PROV_BUNDLE_ID' then 75 
     when meas='PCT_SERV_IND_PRIM_ENC_PROV_LOC' then 76
     when meas='PCT_BILL_IND_PRIM_ENC_PROV_LOC' then 77
end as id,
BHP, CCA, NAV, SWH, TFT, UHC, MGS
from MHTEAM.DWDQ.INF_B_SC_STG_~PN~_TRANSPOSE2;

--truncate table MHTEAM.DWDQ.INF_B_SC_STG_SCO_REP_STEP2

insert into MHTEAM.DWDQ.INF_B_SC_STG_SCO_REP_STEP2
select 
to_date('~ASOFDT~','YYYYMMDD') as RUN_DATE,
rp1.meas as MEASURE,
rp1.claimtype,
rp1.benchmark,
rp1.id,
rp1.bhp,rp2.bhp  as bhp_denom, 
rp1.cca,rp2.cca  as cca_denom,
rp1.nav,rp2.nav  as nav_denom, 
rp1.swh,rp2.swh as swh_denom,
rp1.tft,rp2.tft  as tft_denom, 
rp1.uhc,rp2.uhc  as uhc_denom,
rp1.mgs,rp2.mgs  as mgs_denom
from MHTEAM.DWDQ.INF_B_SC_STG_SCO_REP_STEP1 rp1 
inner join MHTEAM.DWDQ.INF_B_SC_STG_SCO_TRANSPOSE22 rp2 
on rp1.claim_count=rp2.claim_count
ORDER BY MEAS, CLAIMTYPE;

-- MAP_INF_B_SC_SCO_STEP2_TO_STG_SCO_STEP2
insert into MHTEAM.DWDQ.INF_B_SC_STG_SCO_REP_STEP2
(
RUN_DATE,
MEASURE,
CLAIMTYPE,
BENCHMARK,
ID,
BHP,
BHP_DENOM,
CCA,
CCA_DENOM,
NAV,
NAV_DENOM,
SWH,
SWH_DENOM,
TFT,
TFT_DENOM,
UHC,
UHC_DENOM,
MGS,
MGS_DENOM
)
select
TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE,
MEASURE AS meas,
CLAIMTYPE,
BENCHMARK,
----
case when meas='2 Claim Category' then 8
     when meas='4 Record Indicator' then 26
     when meas='17 From Service Date' then 13
     when meas='18 To Service Date' then 35
     when meas='19 Primary Diagnosis' then 23
     when meas='26 Procedure Code Outpt' then 40
     when meas='26 Procedure Code Prof_M' then 24
     when meas='27 Procedure Modifier DME' then 41     
     when meas='27 Procedure Modifier LabXray' then 42
     when meas='27 Procedure Modifier Surgery Prof_M' then 43
     when meas='36 Quantity' then 25
     when meas='68 Net Payment' then 16
     when meas='76 New Member ID' then 17
     when meas='11 Medicare Code' then 44
     when meas='31 Revenue Code' then 28
     when meas='32 Place of Service' then 19
     when meas='33 Place of Service Type' then 37
     when meas='60 Billed Charge' then 4
     when meas='61 Gross Payment Amount' then 45
     when meas='63 Medicare Amount' then 7
     when meas='80 Service Category' then 29
     when meas='86 Allowable Amount' then 3
     when meas='193 ICD Version Qualifier' then 14
     when meas='15 Admission Date' then 1
     when meas='16 Discharge Date' then 10
     when meas='24    Type of Admission' then 36
     when meas='37 NDC Number' then 15
     when meas='50 Servicing Provider ID' then 31
     when meas='51 Servicing Provider ID Type' then 32
     when meas='55 Servicing Provider Type' then 33
     when meas='56 Servicing Provider Specialty' then 38
     when meas='58 Billing Provider ID' then 5
     when meas='93 Billing Provider ID Type' then 6
     when meas=' Billing Provider Specialty' then 39
     when meas='34 Patient Discharge Status' then 18
     when meas='85 Admitting Diagnosis' then 2
     when meas='124 Patient Pay Amount' then 30
     when meas='25 Source of Admission' then 34
     when meas='81 Prescribing Prov. ID' then 20
     when meas='94 Prescribing Prov. ID Type' then 21
     when meas='40 Refill Indicator' then 27
     when meas='41 Dispense as Written Indicator' then 11
     when meas='67 Dispensing Fee' then 12
     when meas='82 Date Script Written' then 9
     when meas='198 Prescription Number' then 22
     when meas='6 Servicing Provider Last Name' then 46
     when meas='6 Billing Provider Last Name' then 47
     when meas='8 Servicing Provider Street Address' then 48
     when meas='8 Billing Provider Street Address' then 49
     when meas='9 Servicing Provider City Address' then 50
     when meas='9 Billing Provider City Address' then 51
     when meas='10 Servicing Provider State Address' then 52
     when meas='10 Billing Provider State Address' then 53
     when meas='11 Servicing Provider Zip Address' then 54
     when meas='11 Billing Provider Zip Address' then 55
     when meas='12 Servicing Provider Street Mailing Address' then 56
     when meas='12 Billing Provider Street Mailing Address' then 57
     when meas='13 Servicing Provider City Mailing Address' then 58
     when meas='13 Billing Provider City Mailing Address' then 59
     when meas='14 Servicing Provider State Mailing Address' then 60
     when meas='14 Billing Provider State Mailing Address' then 61
     when meas='15 Servicing Provider Zip Mailing Address' then 62
     when meas='15 Billing Provider Zip Mailing Address' then 63
     when meas='23 Servicing Provider Accepting New Patients' then 64
     when meas='23 Billing Provider Accepting New Patients' then 65
     when meas='26 Servicing Provider NPI' then 66
     when meas='26 Billing Provider NPI' then 67
     when meas='30 Servicing Tax ID' then 68
     when meas='30 Billing Tax ID' then 69
     when meas='33 Servicing Provider Primary Care Eligibility Ind' then 70
     when meas='33 Billing Provider Primary Care Eligibility Ind' then 71
     when meas='34 Servicing Provider APCD Organization ID' then 72
     when meas='34 Billing Provider APCD Organization ID' then 73
     when meas='40 Servicing Provider Bundle ID' then 74
     when meas='40 Billing Provider Bundle ID' then 75 
     when meas='41 Servicing Provider Primary Address Location Indicator' then 76
     when meas='41 Billing Provider Primary Address Location Indicator' then 77
end as id,
----
BHP,
BHP_DENOM,
CCA,
CCA_DENOM,
NAV,
NAV_DENOM,
SWH,
SWH_DENOM,
TFT,
TFT_DENOM,
UHC,
UHC_DENOM,
MGS,
MGS_DENOM
from MHTEAM.DWDQ.INF_B_SC_SCO_REP_STEP2_~MON~;

-- FAILS

-- PART 1

INSERT INTO MHTEAM.DWDQ.INF_B_SC_STG_SCO_FAILS
-- SCO_FAIL1
SELECT * FROM (
WITH SCO_FAIL1 AS (
SELECT DISTINCT
1 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1, CLAIM_TYPE AS VALUE1, 'ADMIT_DT' AS DESC2, TO_CHAR(ADMIT_DT,'YYYYMMDD') AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE 
CLAIM_TYPE IN('I','L') and ( (ADMIT_DT IS NULL) 
  OR ( ADMIT_DT IS NOT NULL AND DISCHARGE_DT IS NOT NULL AND ADMIT_DT > DISCHARGE_DT) )
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
  FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL1 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL2
SELECT * FROM (
WITH SCO_FAIL2 AS (
SELECT DISTINCT
2 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1, CLAIM_TYPE AS VALUE1, 'CDE_TYPE_OF_BILL_ENC' AS DESC2, CDE_TYPE_OF_BILL_ENC AS VALUE2, 'CDE_DIAG_ADMIT' AS DESC3, CDE_DIAG_ADMIT AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE 
CLAIM_TYPE='I' AND SUBSTR(CDE_TYPE_OF_BILL_ENC,1,2) NOT IN('12','22','42','62','81','82')  
AND CDE_DIAG_ADMIT  IN ('+','-', ' ')
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL2 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL3
SELECT * FROM (
WITH SCO_FAIL3 AS (
SELECT DISTINCT
3 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'AMT_ALLOWED' AS DESC1, TO_CHAR(AMT_ALLOWED,'999,999,999.99') AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE
AMT_ALLOWED  < 0 or AMT_ALLOWED IS NULL
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX

)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL3 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL4
SELECT * FROM (
WITH SCO_FAIL4 AS (
SELECT DISTINCT
4 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'AMT_BILLED' AS DESC1, TO_CHAR(AMT_BILLED,'999,999,999.99') AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE
(AMT_BILLED  < 0 OR AMT_BILLED IS NULL)
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL4 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL5
SELECT * FROM (
WITH SCO_FAIL5 AS (
SELECT DISTINCT
5 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'BILL_PROV_ID' AS DESC1, BILL_PROV_ID AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE
BILL_PROV_ID IN (' ','-','+','#') OR BILL_PROV_ID IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL5 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL6
SELECT * FROM (
WITH SCO_FAIL6 AS (
SELECT DISTINCT
6 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'BILL_PROV_ID_TYPE' AS DESC1, BILL_PROV_ID_TYPE AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE
SUBSTR(BILL_PROV_ID_TYPE,1,1) NOT IN ('1','6','9')
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL6 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
/* BILL NPI defined later differently
UNION
-- SCO_FAIL7
SELECT * FROM (
WITH SCO_FAIL7 AS (
SELECT DISTINCT
7 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1, CLAIM_TYPE AS VALUE1, 'CDE_ENC_REC_IND' AS DESC2, CDE_ENC_REC_IND AS VALUE2, 'BILL_NPI' AS DESC3, BILL_NPI AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE TO_CHAR(DOS_FROM,'YYYYMM') = SUBSTR('~MONS~',1,6)
AND CDE_ENC_REC_IND <> '0' AND CLAIM_TYPE NOT IN ('P','D') and BILL_NPI IN('MISSING','+','-',' ','0')
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL7 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
*/
UNION
-- SCO_FAIL8
SELECT * FROM (
WITH SCO_FAIL8 AS (
SELECT DISTINCT
8 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'DSC_ENC_CLAIM_CAT' AS DESC1, DSC_ENC_CLAIM_CAT AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE
SUBSTR(DSC_ENC_CLAIM_CAT,1,1) NOT IN ('1','2','3','4','5','6','7')
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL8 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL9
SELECT * FROM (
WITH SCO_FAIL9 AS (
SELECT DISTINCT
9 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1, CLAIM_TYPE AS VALUE1, 'CDE_DRUG_CLASS' AS DESC2, CDE_DRUG_CLASS AS VALUE2, 'DATE_SCRIPT_WRITTEN' AS DESC3, TO_CHAR(DATE_SCRIPT_WRITTEN,'YYYYMMDD') AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE
CLAIM_TYPE='P' AND CDE_DRUG_CLASS='F' AND DATE_SCRIPT_WRITTEN IS NULL
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL9 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL10
SELECT * FROM (
WITH SCO_FAIL10 AS (
SELECT DISTINCT
10 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1, CLAIM_TYPE AS VALUE1, 'CDE_TYPE_OF_BILL_ENC' AS DESC2, CDE_TYPE_OF_BILL_ENC AS VALUE2, 'DSC_PATIENT_STATUS' AS DESC3, DSC_PATIENT_STATUS AS VALUE3,
'DISCHARGE_DT' AS DESC4, TO_CHAR(DISCHARGE_DT,'YYYYMMDD') AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE
(CLAIM_TYPE='I' AND SUBSTR(CDE_TYPE_OF_BILL_ENC,1,2) <> '21' and SUBSTR(DSC_PATIENT_STATUS,1,2) NOT BETWEEN '30' AND '39') 
      AND ( DISCHARGE_DT IS NULL OR ( ADMIT_DT IS NOT NULL AND DISCHARGE_DT < ADMIT_DT ) )  
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL10 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL11
SELECT * FROM (
WITH SCO_FAIL11 AS (
SELECT DISTINCT
11 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1, CLAIM_TYPE AS VALUE1, 'CDE_DRUG_CLASS' AS DESC2, CDE_DRUG_CLASS AS VALUE2, 'DSC_ENC_DISP_AS_WRTN' AS DESC3, DSC_ENC_DISP_AS_WRTN AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE
CLAIM_TYPE='P' AND CDE_DRUG_CLASS='F' AND SUBSTR(DSC_ENC_DISP_AS_WRTN,1,1) NOT IN('0','1','2','3','4','5','6','7','8','9')  
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL11 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL12
SELECT * FROM (
WITH SCO_FAIL12 AS (
SELECT DISTINCT
12 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1, CLAIM_TYPE AS VALUE1, 'CDE_DRUG_CLASS' AS DESC2, CDE_DRUG_CLASS AS VALUE2, 'AMT_NDC_PROFEE' AS DESC3, TO_CHAR(AMT_NDC_PROFEE,'999999999.99') AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE
CLAIM_TYPE='P' AND CDE_DRUG_CLASS='F' AND AMT_NDC_PROFEE IS NULL  
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL12 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL13
SELECT * FROM (
WITH SCO_FAIL13 AS (
SELECT DISTINCT
13 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'DOS_FROM' AS DESC1, TO_CHAR(DOS_FROM,'YYYYMMDD') AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE DOS_FROM IS NULL  
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL13 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL14
SELECT * FROM (
WITH SCO_FAIL14 AS (
SELECT DISTINCT
14 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1, CLAIM_TYPE AS VALUE1, 'CDE_ENC_REC_IND' AS DESC2, CDE_ENC_REC_IND AS VALUE2, 'CDE_ICD_VERSION' AS DESC3, TO_CHAR(CDE_ICD_VERSION,'99') AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE
CDE_ENC_REC_IND <> '0' AND CLAIM_TYPE IN('I','M','O','L') AND CDE_ICD_VERSION NOT IN(9,10)  
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL14 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL15
SELECT * FROM (
WITH SCO_FAIL15 AS (
SELECT DISTINCT
15 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1, CLAIM_TYPE AS VALUE1, 'CDE_DRUG_CLASS' AS DESC2, CDE_DRUG_CLASS AS VALUE2, 'IND_ENC_COMPOUND' AS DESC3, IND_ENC_COMPOUND AS VALUE3,
'CDE_NDC' AS DESC4, CDE_NDC AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE
CLAIM_TYPE='P' AND CDE_DRUG_CLASS='F' AND IND_ENC_COMPOUND='2' AND CDE_NDC IN (' ','-','+','#')  
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL15 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL16
SELECT * FROM (
WITH SCO_FAIL16 AS (
SELECT DISTINCT
16 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'AMT_PAID' AS DESC1, TO_CHAR(AMT_PAID,'999,999,999.99') AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE
(AMT_PAID < 0 OR AMT_PAID IS NULL)  
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL16 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL17
SELECT * FROM (
WITH SCO_FAIL17 AS (
SELECT DISTINCT
17 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'ID_MEDICAID' AS DESC1, ID_MEDICAID AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE
SUBSTR(ID_MEDICAID,1,1) <> '1'  
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL17 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL18
SELECT * FROM (
WITH SCO_FAIL18 AS (
SELECT DISTINCT
18 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1, CLAIM_TYPE AS VALUE1, 'CDE_PATIENT_STATUS' AS DESC2, CDE_PATIENT_STATUS AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE
CLAIM_TYPE IN('I','O') AND CDE_PATIENT_STATUS IN ('+', '-', ' ')  
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL18 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL19
-- changed OR
SELECT * FROM (
WITH SCO_FAIL19 AS (
SELECT DISTINCT
19 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1,  CLAIM_TYPE AS VALUE1, 'CDE_ENC_CLAIM_CAT' AS DESC2, CDE_ENC_CLAIM_CAT AS VALUE2, 'CDE_TYPE_OF_BILL_ENC' AS DESC3, CDE_TYPE_OF_BILL_ENC AS VALUE3,
'CDE_PLACE_OF_SERVICE_ENC' AS DESC4, CDE_PLACE_OF_SERVICE_ENC AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE
CLAIM_TYPE NOT IN('P','D') AND                                                                                    
      ( SUBSTR(CDE_PLACE_OF_SERVICE_ENC,1,1) NOT IN('0','1','2','3','4','5','6','7','8','9') OR
        SUBSTR(CDE_PLACE_OF_SERVICE_ENC,2,1) NOT IN('0','1','2','3','4','5','6','7','8','9'))
       AND
      ( SUBSTR(CDE_TYPE_OF_BILL_ENC,1,1) NOT IN('0','1','2','3','4','5','6','7','8','9') OR
        SUBSTR(CDE_TYPE_OF_BILL_ENC,2,1) NOT IN('0','1','2','3','4','5','6','7','8','9'))
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL19 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL20
SELECT * FROM (
WITH SCO_FAIL20 AS (
SELECT DISTINCT
20 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1,  CLAIM_TYPE AS VALUE1, 'CDE_DRUG_CLASS' AS DESC2, CDE_DRUG_CLASS AS VALUE2, 'ENC_PRES_PROV_ID' AS DESC3, ENC_PRES_PROV_ID AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE
CLAIM_TYPE = 'P' AND CDE_DRUG_CLASS='F' AND ENC_PRES_PROV_ID IN ('+','-',' ')
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL20 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
);

-- PART 2

INSERT INTO MHTEAM.DWDQ.INF_B_SC_STG_SCO_FAILS
-- SCO_FAILS21
SELECT * FROM (
WITH SCO_FAIL21 AS (
SELECT DISTINCT
21 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1,  CLAIM_TYPE AS VALUE1, 'CDE_DRUG_CLASS' AS DESC2, CDE_DRUG_CLASS AS VALUE2, 'PRES_PROV_ID_TYPE' AS DESC3, PRES_PROV_ID_TYPE AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS
WHERE
CLAIM_TYPE='P' AND CDE_DRUG_CLASS='F' AND SUBSTR(PRES_PROV_ID_TYPE,1,1) NOT IN ('1','6','8')
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
  FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL21 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL22
SELECT * FROM (
WITH SCO_FAIL22 AS (
SELECT DISTINCT
22 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1,  CLAIM_TYPE AS VALUE1, 'CDE_DRUG_CLASS' AS DESC2, CDE_DRUG_CLASS AS VALUE2, 'RX_NUMBER' AS DESC3, RX_NUMBER AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS
WHERE
CLAIM_TYPE='P' AND CDE_DRUG_CLASS='F' AND RX_NUMBER IN (' ','-','+','#') OR RX_NUMBER IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL22 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL23
SELECT * FROM (
WITH SCO_FAIL23 AS (
SELECT DISTINCT
23 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1,  CLAIM_TYPE AS VALUE1, 'CDE_ENC_REC_IND' AS DESC2, CDE_ENC_REC_IND AS VALUE2, 'PRIMARY_DIAG' AS DESC3, PRIMARY_DIAG AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS
WHERE
CDE_ENC_REC_IND <> '0' AND CLAIM_TYPE IN('I','M','O','L') AND ( PRIMARY_DIAG in ('+','-', ' ') OR PRIMARY_DIAG IS NULL) 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL23 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL24
SELECT * FROM (
WITH SCO_FAIL24 AS (
SELECT DISTINCT
24 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1,  CLAIM_TYPE AS VALUE1, 'CDE_ENC_REC_IND' AS DESC2, CDE_ENC_REC_IND AS VALUE2, 'PROC_CODE' AS DESC3, PROC_CODE AS VALUE3,
'CDE_ENC_PROC_TYPE' AS DESC4, CDE_ENC_PROC_TYPE AS VALUE4, 'PROC_CODE_ENC' AS DESC5, PROC_CODE_ENC AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS
WHERE
CDE_ENC_REC_IND <> '0' AND CLAIM_TYPE IN ('M') AND (PROC_CODE in(' ','-','+','#') OR 
(CDE_ENC_PROC_TYPE ='7' AND PROC_CODE_ENC IN (' ','-','+','#')))
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL24 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL25
SELECT * FROM (
WITH SCO_FAIL25 AS (
SELECT DISTINCT
25 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1,  CLAIM_TYPE AS VALUE1, 'QTY_UNITS_BILLED' AS DESC2, TO_CHAR(QTY_UNITS_BILLED, '999,999,999,999.99') AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS
WHERE
CLAIM_TYPE NOT IN('P') and QTY_UNITS_BILLED IS NULL
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL25 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL26
/* JPL 20230927, include 8 and 9)*/
SELECT * FROM (
WITH SCO_FAIL26 AS (
SELECT DISTINCT
26 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'DSC_ENC_REC_IND' AS DESC1,  DSC_ENC_REC_IND AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS
WHERE
SUBSTR(DSC_ENC_REC_IND,1,1) NOT IN ('0','1','2','3','4','5','6','7','8','9')
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL26 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL27
SELECT * FROM (
WITH SCO_FAIL27 AS (
SELECT DISTINCT
27 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1,  CLAIM_TYPE AS VALUE1, 'CDE_DRUG_CLASS' AS DESC2, CDE_DRUG_CLASS AS VALUE2, 'QTY_REFILL' AS DESC3, TO_CHAR(QTY_REFILL, '9,999,999,999.99') AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS
WHERE
CLAIM_TYPE='P' AND CDE_DRUG_CLASS='F' AND (QTY_REFILL IS NULL or QTY_REFILL < 0)
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL27 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL28
SELECT * FROM (
WITH SCO_FAIL28 AS (
SELECT DISTINCT
28 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1,  CLAIM_TYPE AS VALUE1, 'CDE_ENC_REC_IND' AS DESC2, CDE_ENC_REC_IND AS VALUE2, 'DSC_REVENUE' AS DESC3, DSC_REVENUE AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS
WHERE
CLAIM_TYPE IN('I','O','L') and CDE_ENC_REC_IND <> '0' AND SUBSTR(DSC_REVENUE,1,1) NOT IN ('0','1','2','3','4','5','6','7','8','9')
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL28 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL29
SELECT * FROM (
WITH SCO_FAIL29 AS (
SELECT DISTINCT
29 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1,  CLAIM_TYPE AS VALUE1, 'CDE_ENC_REC_IND' AS DESC2, CDE_ENC_REC_IND AS VALUE2, 'SERV_NPI' AS DESC3, SERV_NPI AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS
WHERE
CDE_ENC_REC_IND <> '0' AND CLAIM_TYPE NOT IN ('P','D') AND SERV_NPI IN('MISSING','+','-',' ','0') 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL29 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
/* SERV NOT defined later differnetly
UNION
-- SCO_FAIL30
SELECT * FROM (
WITH SCO_FAIL30 AS (
SELECT DISTINCT
30 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1,  CLAIM_TYPE AS VALUE1, 'CDE_ENC_REC_IND' AS DESC2, CDE_ENC_REC_IND AS VALUE2, 'SERV_NPI' AS DESC3, SERV_NPI AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS
WHERE TO_CHAR(DOS_FROM,'YYYYMM') = SUBSTR('~MONS~',1,6)
AND CDE_ENC_REC_IND <> '0' AND CLAIM_TYPE NOT IN ('P','D') AND SERV_NPI IN('MISSING','+','-',' ','0') 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL30 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
*/
UNION
-- SCO_FAIL31
SELECT * FROM (
WITH SCO_FAIL31 AS (
SELECT DISTINCT
31 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'ENC_SERV_PROV_ID' AS DESC1, ENC_SERV_PROV_ID AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS
WHERE
ENC_SERV_PROV_ID IN (' ','-','+','#') OR ENC_SERV_PROV_ID IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL31 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL32
SELECT * FROM (
WITH SCO_FAIL32 AS (
SELECT DISTINCT
32 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'SERV_PROV_ID_TYPE' AS DESC1, SERV_PROV_ID_TYPE AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS
WHERE
SUBSTR(SERV_PROV_ID_TYPE,1,1) NOT IN ('1','6','9') 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL32 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL33
SELECT * FROM (
WITH SCO_FAIL33 AS (
SELECT DISTINCT
33 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'ENC_SERV_PROV_TYPE' AS DESC1, ENC_SERV_PROV_TYPE AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS
WHERE
ENC_SERV_PROV_TYPE IN (' ','-','+','#') OR ENC_SERV_PROV_TYPE IS NULL  
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL33 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL34
SELECT * FROM (
WITH SCO_FAIL34 AS (
SELECT DISTINCT
34 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1, CLAIM_TYPE AS VALUE1, 'CDE_ADMIT_SOURCE' AS DESC2, CDE_ADMIT_SOURCE AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS
WHERE
CLAIM_TYPE IN('I','L') AND CDE_ADMIT_SOURCE NOT IN ('1','2','3','4','5','6','7','8','9','A','B','C','D','E','F') 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL34 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL35
SELECT * FROM (
WITH SCO_FAIL35 AS (
SELECT DISTINCT
35 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'DOS_THRU' AS DESC1, TO_CHAR(DOS_THRU,'YYYYMMDD') AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS
WHERE
DOS_THRU IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL35 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL36
SELECT * FROM (
WITH SCO_FAIL36 AS (
SELECT DISTINCT
36 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1, CLAIM_TYPE AS VALUE1, 'CDE_ADMIT_TYPE' AS DESC2, CDE_ADMIT_TYPE AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS
WHERE
CLAIM_TYPE IN('I','L') AND CDE_ADMIT_TYPE NOT IN ('1','2','3','4','5','6','7','8','9')  
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL36 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL37
-- changed OR
SELECT * FROM (
WITH SCO_FAIL37 AS (
SELECT DISTINCT
37 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1,  CLAIM_TYPE AS VALUE1, 'CDE_ENC_CLAIM_CAT' AS DESC2, CDE_ENC_CLAIM_CAT AS VALUE2, 'CDE_TYPE_OF_BILL_ENC' AS DESC3, CDE_TYPE_OF_BILL_ENC AS VALUE3,
'CDE_PLACE_OF_SERVICE_ENC' AS DESC4, CDE_PLACE_OF_SERVICE_ENC AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS
WHERE
CLAIM_TYPE NOT IN('P','D') AND                                                                                    
     ((CDE_ENC_CLAIM_CAT IN('2','3','4','5') AND 
       SUBSTR(CDE_PLACE_OF_SERVICE_ENC,1,1) NOT IN('0','1','2','3','4','5','6','7','8','9') OR
       SUBSTR(CDE_PLACE_OF_SERVICE_ENC,2,1) NOT IN('0','1','2','3','4','5','6','7','8','9'))
       OR
       (CDE_ENC_CLAIM_CAT in('1','6') AND 
       SUBSTR(CDE_TYPE_OF_BILL_ENC,1,1) NOT IN('0','1','2','3','4','5','6','7','8','9') OR
       SUBSTR(CDE_TYPE_OF_BILL_ENC,2,1) NOT IN('0','1','2','3','4','5','6','7','8','9')))
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL37 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
);

-- PART 3

INSERT INTO MHTEAM.DWDQ.INF_B_SC_STG_SCO_FAILS
-- SCO_FAIL38
SELECT * FROM (
WITH SCO_FAIL38 AS (
SELECT DISTINCT
38 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'SERV_PROV_SPECIALTY' AS DESC1, SERV_PROV_SPECIALTY AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE SERV_PROV_SPECIALTY IN (' ','-','+','#') OR SERV_PROV_SPECIALTY IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL38 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL39
SELECT * FROM (
WITH SCO_FAIL39 AS (
SELECT DISTINCT
39 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'BILL_PROV_SPECIALTY' AS DESC1, BILL_PROV_SPECIALTY AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE BILL_PROV_SPECIALTY IN (' ','-','+','#') OR BILL_PROV_SPECIALTY IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL39 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL40
SELECT * FROM (
WITH SCO_FAIL40 AS (
SELECT DISTINCT
40 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1, CLAIM_TYPE AS VALUE1, 'CDE_ENC_REC_IND' AS DESC2, CDE_ENC_REC_IND AS VALUE2, 'CDE_REVENUE' AS DESC3, TO_CHAR(CDE_REVENUE,'9,999') AS VALUE3,
'PROC_CODE' AS DESC4, PROC_CODE AS VALUE4, 'PROC_CODE_ENC' AS DESC5, PROC_CODE_ENC AS VALUE5 
, 'CDE_ENC_PROC_TYPE' AS DESC6, CDE_ENC_PROC_TYPE AS VALUE6
, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE 
CDE_ENC_REC_IND <> '0' AND ((claim_type in('O') and 
(proc_code in(' ','-','+','#') and ((cde_revenue not between 250 and 259) and (cde_revenue <> 260) and  (cde_revenue not between 262 and 279) and 
          (cde_revenue not between 370 and 372) and (cde_revenue <> 374) and (cde_revenue <> 379) and (cde_revenue <> 710) and
          (cde_revenue <> 839) and (cde_revenue <> 902) and (cde_revenue <> 946) and (cde_revenue <> 947) and (cde_revenue <> 961) and
          (cde_revenue <> 962) and (cde_revenue <> 963) and (cde_revenue <> 973) and (cde_revenue <> 974) and (cde_revenue <> 975) and
          (cde_revenue <> 981) and (cde_revenue <> 982) and (cde_revenue <> 983) and (cde_revenue <> 988))))  or
           (claim_type in ('O') and cde_enc_proc_type ='7' and proc_code_enc in(' ','-','+','#')))
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL40 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL41
SELECT * FROM (
WITH SCO_FAIL41 AS (
SELECT DISTINCT
41 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1, CLAIM_TYPE AS VALUE1, 'CDE_ENC_REC_IND' AS DESC2, CDE_ENC_REC_IND AS VALUE2, 'CDE_ENC_PROC_TYPE' AS DESC3, CDE_ENC_PROC_TYPE AS VALUE3,
'PROC_CODE' AS DESC4, PROC_CODE AS VALUE4, 'PROC_CODE_ENC' AS DESC5, PROC_CODE_ENC AS VALUE5 
, 'PROC_MODIFIER1' AS DESC6, PROC_MODIFIER1 AS VALUE6
, 'PROC_MODIFIER2' AS DESC7, PROC_MODIFIER2 AS VALUE7
, 'PROC_MODIFIER3' AS DESC8, PROC_MODIFIER3 AS VALUE8
, 'PROC_MODIFIER4' AS DESC9, PROC_MODIFIER4 AS VALUE9
, NULL AS DESC10, NULL AS VALUE10
, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE 
CDE_ENC_REC_IND <> '0' AND claim_type in('M') and ((substr(proc_code,1,1) in('E','K') and proc_code not in('E0241','E0242','E0243','E0700')) or 
(cde_enc_proc_type ='7' and substr(proc_code_enc,1,1) in('E','K') and proc_code_enc not in('E0241','E0242','E0243','E0700'))) and 
(proc_modifier1 not in('RR','NU','UE') and proc_modifier2 not in('RR','NU','UE') and proc_modifier3 not in('RR','NU','UE')
and proc_modifier4 not in('RR','NU','UE'))
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL41 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL42
SELECT * FROM (
WITH SCO_FAIL42 AS (
SELECT DISTINCT
42 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1, CLAIM_TYPE AS VALUE1, 'CDE_ENC_REC_IND' AS DESC2, CDE_ENC_REC_IND AS VALUE2, 'CDE_ENC_PROC_TYPE' AS DESC3, CDE_ENC_PROC_TYPE AS VALUE3,
'PROC_CODE' AS DESC4, PROC_CODE AS VALUE4, 'PROC_CODE_ENC' AS DESC5, PROC_CODE_ENC AS VALUE5 
, 'PROC_MODIFIER1' AS DESC6, PROC_MODIFIER1 AS VALUE6
, 'PROC_MODIFIER2' AS DESC7, PROC_MODIFIER2 AS VALUE7
, 'PROC_MODIFIER3' AS DESC8, PROC_MODIFIER3 AS VALUE8
, 'PROC_MODIFIER4' AS DESC9, PROC_MODIFIER4 AS VALUE9
, 'CDE_PLACE_OF_SERVICE_ENC' AS DESC10, CDE_PLACE_OF_SERVICE_ENC AS VALUE10
, 'CDE_TYPE_OF_BILL_ENC' AS DESC11, CDE_TYPE_OF_BILL_ENC AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE 
CDE_ENC_REC_IND <> '0' AND claim_type in('M') and 
(cde_place_of_service_enc not in('11') AND substr(cde_type_of_bill_enc,1,2) not in('11')) and
(substr(proc_code,1,1) in('7')  or (cde_enc_proc_type ='7' and substr(proc_code_enc,1,1) in('7'))) and 
(proc_modifier1  in('+',' ','-') and proc_modifier2 in('+',' ','-') and proc_modifier3 in('+',' ','-') and proc_modifier4 in('+',' ','-'))
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL42 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)

UNION
-- SCO_FAIL43
SELECT * FROM (
WITH SCO_FAIL43 AS (
SELECT DISTINCT
43 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CLAIM_TYPE' AS DESC1, CLAIM_TYPE AS VALUE1, 'CDE_ENC_REC_IND' AS DESC2, CDE_ENC_REC_IND AS VALUE2, 'CDE_ENC_PROC_TYPE' AS DESC3, CDE_ENC_PROC_TYPE AS VALUE3,
'PROC_CODE' AS DESC4, PROC_CODE AS VALUE4, 'PROC_CODE_ENC' AS DESC5, PROC_CODE_ENC AS VALUE5 
, 'PROC_MODIFIER1' AS DESC6, PROC_MODIFIER1 AS VALUE6
, 'PROC_MODIFIER2' AS DESC7, PROC_MODIFIER2 AS VALUE7
, 'PROC_MODIFIER3' AS DESC8, PROC_MODIFIER3 AS VALUE8
, 'PROC_MODIFIER4' AS DESC9, PROC_MODIFIER4 AS VALUE9
, 'PROC_CODE_ENC_DESC' AS DESC10, PROC_CODE_ENC_DESC AS VALUE10
, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE 
cde_enc_rec_ind <> '0' and claim_type in('M') and 
((proc_code between '10021' and '69990' and substr(proc_code,5,1) in('0','1','2','3','4','5','6','7','8','9') and proc_code_desc not in ('Unknown','N/A')) or 
(cde_enc_proc_type ='7' and proc_code_enc between '10021' and '69990' and substr(proc_code_enc,5,1) in('0','1','2','3','4','5','6','7','8','9') and
 proc_code_enc_desc not in('Unknown','N/A'))) and
(proc_modifier1 in('+',' ','-') and proc_modifier2 in('+',' ','-') and proc_modifier3 in('+',' ','-') and proc_modifier4 in('+',' ','-'))
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL43 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL44
SELECT * FROM (
WITH SCO_FAIL44 AS (
SELECT DISTINCT
44 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'CDE_ENC_MEDICARE' AS DESC1, CDE_ENC_MEDICARE AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE cde_enc_medicare not in('0','1','2','3','4','5','6','7') 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL44 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL45
SELECT * FROM (
WITH SCO_FAIL45 AS (
SELECT DISTINCT
45 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'AMT_GROSS_PAID' AS DESC1, TO_CHAR(AMT_GROSS_PAID,'999,999,999.99') AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE amt_gross_paid < 0 OR amt_gross_paid IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL45 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL7
SELECT * FROM (
WITH SCO_FAIL7 AS (
SELECT DISTINCT
7 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'AMT_PAID_MCARE' AS DESC1, TO_CHAR(AMT_PAID_MCARE,'999,999,999.99') AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE amt_paid_mcare < 0 OR amt_paid_mcare IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL7 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL30
SELECT * FROM (
WITH SCO_FAIL30 AS (
SELECT DISTINCT
30 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'PATIENT_PAY_AMOUNT' AS DESC1, TO_CHAR(PATIENT_PAY_AMOUNT,'999,999,999.99') AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE PATIENT_PAY_AMOUNT < 0 OR PATIENT_PAY_AMOUNT IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL30 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
);

-- PART 4

INSERT INTO MHTEAM.DWDQ.INF_B_SC_STG_SCO_FAILS
-- SCO_FAIL46
SELECT * FROM (
WITH SCO_FAIL46 AS (
SELECT DISTINCT
46 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'SERV_PROV_LNAME' AS DESC1, SERV_PROV_LNAME AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE serv_prov_lname in(' ','-','+','#','N/A','Unknown') OR serv_prov_lname IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL46 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL47
SELECT * FROM (
WITH SCO_FAIL47 AS (
SELECT DISTINCT
47 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'BILL_PROV_LNAME' AS DESC1, BILL_PROV_LNAME AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE bill_prov_lname in(' ','-','+','#','N/A','Unknown') OR bill_prov_lname IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL47 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL48
SELECT * FROM (
WITH SCO_FAIL48 AS (
SELECT DISTINCT
48 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'SERV_ADR_STREET1' AS DESC1, SERV_ADR_STREET1 AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE serv_adr_street1 in(' ','-','+','#','N/A','Unknown') OR serv_adr_street1 IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL48 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL49
SELECT * FROM (
WITH SCO_FAIL49 AS (
SELECT DISTINCT
49 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'BILL_ADR_STREET1' AS DESC1, BILL_ADR_STREET1 AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE bill_adr_street1 in(' ','-','+','#','N/A','Unknown') OR bill_adr_street1 IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL49 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL50
SELECT * FROM (
WITH SCO_FAIL50 AS (
SELECT DISTINCT
50 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'SERV_ADR_CITY1' AS DESC1, SERV_ADR_CITY1 AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE serv_adr_city1 in(' ','-','+','#','N/A','Unknown') OR serv_adr_city1 IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL50 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL51
SELECT * FROM (
WITH SCO_FAIL51 AS (
SELECT DISTINCT
51 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'BILL_ADR_CITY1' AS DESC1, BILL_ADR_CITY1 AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE bill_adr_city1 in(' ','-','+','#','N/A','Unknown') OR bill_adr_city1 IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL51 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL52
SELECT * FROM (
WITH SCO_FAIL52 AS (
SELECT DISTINCT
52 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'SERV_ADR_STATE1' AS DESC1, SERV_ADR_STATE1 AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE serv_adr_state1 in(' ','-','+','#','N/A','Unknown') OR serv_adr_state1 IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL52 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL53
SELECT * FROM (
WITH SCO_FAIL53 AS (
SELECT DISTINCT
53 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'BILL_ADR_STATE1' AS DESC1, BILL_ADR_STATE1 AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE bill_adr_state1 in(' ','-','+','#','N/A','Unknown') OR bill_adr_state1 IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL53 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL54
SELECT * FROM (
WITH SCO_FAIL54 AS (
SELECT DISTINCT
54 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'SERV_ADR_ZIP1' AS DESC1, SERV_ADR_ZIP1 AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE serv_adr_zip1 in(' ','-','+','#','N/A','Unknown') OR serv_adr_zip1 IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL54 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL55
SELECT * FROM (
WITH SCO_FAIL55 AS (
SELECT DISTINCT
55 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'BILL_ADR_ZIP1' AS DESC1, BILL_ADR_ZIP1 AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE bill_adr_zip1 in(' ','-','+','#','N/A','Unknown') OR bill_adr_zip1 IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL55 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL56
SELECT * FROM (
WITH SCO_FAIL56 AS (
SELECT DISTINCT
56 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'SERV_ADR_MAIL_STREET1' AS DESC1, SERV_ADR_MAIL_STREET1 AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE serv_adr_mail_street1 in(' ','-','+','#','N/A','Unknown') OR serv_adr_mail_street1 IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL56 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL57
SELECT * FROM (
WITH SCO_FAIL57 AS (
SELECT DISTINCT
57 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'BILL_ADR_MAIL_STREET1' AS DESC1, BILL_ADR_MAIL_STREET1 AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE bill_adr_mail_street1 in(' ','-','+','#','N/A','Unknown') OR bill_adr_mail_street1 IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL57 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL58
SELECT * FROM (
WITH SCO_FAIL58 AS (
SELECT DISTINCT
58 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'SERV_ADR_MAIL_CITY1' AS DESC1, SERV_ADR_MAIL_CITY1 AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE serv_adr_mail_city1 in(' ','-','+','#','N/A','Unknown') OR serv_adr_mail_city1 IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL58 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL59
SELECT * FROM (
WITH SCO_FAIL59 AS (
SELECT DISTINCT
59 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'BILL_ADR_MAIL_CITY1' AS DESC1, BILL_ADR_MAIL_CITY1 AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE bill_adr_mail_city1 in(' ','-','+','#','N/A','Unknown') OR bill_adr_mail_city1 IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL59 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL60
SELECT * FROM (
WITH SCO_FAIL60 AS (
SELECT DISTINCT
60 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'SERV_ADR_MAIL_STATE1' AS DESC1, SERV_ADR_MAIL_STATE1 AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE serv_adr_mail_state1 in(' ','-','+','#','N/A','Unknown') OR serv_adr_mail_state1 IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL60 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL61
SELECT * FROM (
WITH SCO_FAIL61 AS (
SELECT DISTINCT
61 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'BILL_ADR_MAIL_STATE1' AS DESC1, BILL_ADR_MAIL_STATE1 AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE bill_adr_mail_state1 in(' ','-','+','#','N/A','Unknown') OR bill_adr_mail_state1 IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL61 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL62
SELECT * FROM (
WITH SCO_FAIL62 AS (
SELECT DISTINCT
62 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'SERV_ADR_MAIL_ZIP1' AS DESC1, SERV_ADR_MAIL_ZIP1 AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE serv_adr_mail_zip1 in(' ','-','+','#','N/A','Unknown') OR serv_adr_mail_zip1 IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL62 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL63
SELECT * FROM (
WITH SCO_FAIL63 AS (
SELECT DISTINCT
63 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'BILL_ADR_MAIL_ZIP1' AS DESC1, BILL_ADR_MAIL_ZIP1 AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE bill_adr_mail_zip1 in(' ','-','+','#','N/A','Unknown') OR bill_adr_mail_zip1 IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL63 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL64
SELECT * FROM (
WITH SCO_FAIL64 AS (
SELECT DISTINCT
64 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'SERV_PANEL_OPEN' AS DESC1, SERV_PANEL_OPEN AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE serv_panel_open not in('1','2') 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL64 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL65
SELECT * FROM (
WITH SCO_FAIL65 AS (
SELECT DISTINCT
65 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'BILL_PANEL_OPEN' AS DESC1, BILL_PANEL_OPEN AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE bill_panel_open not in('1','2') 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL65 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
);

-- PART 5

INSERT INTO MHTEAM.DWDQ.INF_B_SC_STG_SCO_FAILS
-- SCO_FAIL66
SELECT * FROM (
WITH SCO_FAIL66 AS (
SELECT DISTINCT
66 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'SERV_NPI' AS DESC1, SERV_NPI AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE serv_npi in(' ','-','+','#','N/A','Unknown','(null)','0','000000000','0000000000') OR serv_npi IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL66 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL67
SELECT * FROM (
WITH SCO_FAIL67 AS (
SELECT DISTINCT
67 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'BILL_NPI' AS DESC1, BILL_NPI AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE bill_npi in(' ','-','+','#','N/A','Unknown','(null)','0','000000000','0000000000') OR bill_npi IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL67 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL68
SELECT * FROM (
WITH SCO_FAIL68 AS (
SELECT DISTINCT
68 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'SERV_TAX_ID' AS DESC1, SERV_TAX_ID AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE serv_tax_id in(' ','-','+','#','N/A','Unknown','.','000000000') OR serv_tax_id IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL68 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL69
SELECT * FROM (
WITH SCO_FAIL69 AS (
SELECT DISTINCT
69 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'BILL_TAX_ID' AS DESC1, BILL_TAX_ID AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE bill_tax_id in(' ','-','+','#','N/A','Unknown','.','000000000') OR bill_tax_id IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL69 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL70
SELECT * FROM (
WITH SCO_FAIL70 AS (
SELECT DISTINCT
70 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'SERV_PC_ELIG_IND' AS DESC1, SERV_PC_ELIG_IND AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE serv_pc_elig_ind not in('0','1','2','4')
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL70 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL71
SELECT * FROM (
WITH SCO_FAIL71 AS (
SELECT DISTINCT
71 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'BILL_PC_ELIG_IND' AS DESC1, BILL_PC_ELIG_IND AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE bill_pc_elig_ind not in('0','1','2','4')
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL71 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL72
SELECT * FROM (
WITH SCO_FAIL72 AS (
SELECT DISTINCT
72 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'SERV_APCD_ORGID' AS DESC1, SERV_APCD_ORGID AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE serv_apcd_orgid in(' ','-','+','#','N/A','Unknown') OR serv_apcd_orgid IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL72 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL73
SELECT * FROM (
WITH SCO_FAIL73 AS (
SELECT DISTINCT
73 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'BILL_APCD_ORGID' AS DESC1, BILL_APCD_ORGID AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE bill_apcd_orgid in(' ','-','+','#','N/A','Unknown') OR bill_apcd_orgid IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL73 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL74
SELECT * FROM (
WITH SCO_FAIL74 AS (
SELECT DISTINCT
74 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'SERV_PROV_BUNDLE_ID' AS DESC1, SERV_PROV_BUNDLE_ID AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE serv_prov_bundle_id in(' ','-','+','#','N/A','Unknown','000000','000000000','0000000000') OR serv_prov_bundle_id IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL74 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL75
SELECT * FROM (
WITH SCO_FAIL75 AS (
SELECT DISTINCT
75 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'BILL_PROV_BUNDLE_ID' AS DESC1, BILL_PROV_BUNDLE_ID AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE bill_prov_bundle_id in(' ','-','+','#','N/A','Unknown','000000','000000000','0000000000') OR bill_prov_bundle_id IS NULL 
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL75 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL76
SELECT * FROM (
WITH SCO_FAIL76 AS (
SELECT DISTINCT
76 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'SERV_IND_PRIMARY_ENC_PROV_LOC' AS DESC1, SERV_IND_PRIMARY_ENC_PROV_LOC AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE serv_ind_primary_enc_prov_loc not in('N','Y')
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL76 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
)
UNION
-- SCO_FAIL77
SELECT * FROM (
WITH SCO_FAIL77 AS (
SELECT DISTINCT
77 AS ID, 
CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX,CDE_CLM_DISPOSITION,DOS_FROM,CLAIM_TYPE,
'BILL_IND_PRIMARY_ENC_PROV_LOC' AS DESC1, BILL_IND_PRIMARY_ENC_PROV_LOC AS VALUE1, NULL AS DESC2, NULL AS VALUE2, NULL AS DESC3, NULL AS VALUE3,
NULL AS DESC4, NULL AS VALUE4, NULL AS DESC5, NULL AS VALUE5
,NULL AS DESC6, NULL AS VALUE6, NULL AS DESC7, NULL AS VALUE7, NULL AS DESC8, NULL AS VALUE8, NULL AS DESC9, NULL AS VALUE9, NULL AS DESC10, NULL AS VALUE10, NULL AS DESC11, NULL AS VALUE11
FROM MHTEAM.DWDQ.INF_B_SC_STG_SCO_DOS 
WHERE bill_ind_primary_enc_prov_loc not in('N','Y')
ORDER BY CDE_ENC_MCO, ENC_CLAIM_NO,ENC_CLAIM_SUFFIX
)
SELECT
  TO_DATE('~RUN_DATE~','YYYYMMDD') AS RUN_DATE,
  TO_NUMBER('~DQ_BATCH_SEQ~','99999999') AS DQ_BATCH_SEQ,  
  L.ID,
  L.BENCHMARK,
  L.FIELD_ID,
  L.BENCHMARK_THRESHOLD,
  F.CDE_ENC_MCO,
   
  F.ENC_CLAIM_NO,
  F.ENC_CLAIM_SUFFIX,
  F.CDE_CLM_DISPOSITION,
  F.DOS_FROM,
  F.CLAIM_TYPE,
  NULL AS ETL_CHECK,
  F.DESC1, 
  F.VALUE1, 
  F.DESC2, 
  F.VALUE2,
  F.DESC3, 
  F.VALUE3,
  F.DESC4, 
  F.VALUE4,
  F.DESC5, 
  F.VALUE5,F.DESC6,F.VALUE6,F.DESC7,F.VALUE7,F.DESC8,F.VALUE8,F.DESC9,F.VALUE9,F.DESC10,F.VALUE10,F.DESC11,F.VALUE11
FROM  
MHTEAM.DWDQ.INF_B_SC_STG_SCO_SCORECARD_LOOKUP L
JOIN SCO_FAIL77 F ON L.ID = F.ID 
ORDER BY L.ID, CDE_ENC_MCO,   ENC_CLAIM_NO, ENC_CLAIM_SUFFIX
);

-- PROVIDER

--TRUNCATE TABLE MHTEAM.DWDQ.INF_B_SC_STG_SCO_PROVIDER;

INSERT INTO MHTEAM.DWDQ.INF_B_SC_STG_~PN~_PROVIDER
         SELECT
         TO_DATE('~ASOFDT~','YYYYMMDD') as RUN_DATE,
         ENC.CDE_ENC_MCO, 
         MEM.ID_MEDICAID,
         ENC.ODSENC_SEQ, 
         ENCATT.CDE_ENC_REC_IND, 
         ENCATT.DSC_ENC_REC_IND, 
         ENC.DOS_FROM_DT AS DOS_FROM, 
         ENC.DOS_TO_DT AS DOS_THRU,
         ENC.REMIT_THRU_DT, 
         SVC_PROV.ID_PROVIDER AS SERV_PROV_ID, 
         SVC_PROV.ENC_PROV_ID AS ENC_SERV_PROV_ID, 
         SVC_PROV.DSC_ENC_PROV_ID_TYPE AS SERV_PROV_ID_TYPE, 
         SVC_PROV.ID_NPI AS SERV_NPI, 
         SVC_PROV.CDE_ENC_PROV_TYPE AS ENC_SERV_PROV_TYPE, 
         SVC_PROV.NAM_LAST AS SERV_PROV_LNAME, 
         SVC_PROV.ADR_STRT1 AS SERV_ADR_STREET1, 
         SVC_PROV.ADR_CITY AS SERV_ADR_CITY1, 
         SVC_PROV.ADR_STATE AS SERV_ADR_STATE1, 
         SVC_PROV.ADR_ZIP AS SERV_ADR_ZIP1, 
         SVC_PROV.ADR_MAIL_STRT1 AS SERV_ADR_MAIL_STREET1, 
         SVC_PROV.ADR_MAIL_CITY AS SERV_ADR_MAIL_CITY1, 
         SVC_PROV.ADR_MAIL_STATE AS SERV_ADR_MAIL_STATE1, 
         SVC_PROV.ADR_MAIL_ZIP AS SERV_ADR_MAIL_ZIP1, 
         SVC_PROV.NUM_TAX_ID AS SERV_TAX_ID, 
         SVC_PROV.IND_ENC_PANEL_OPEN AS SERV_PANEL_OPEN, 
         SVC_PROV.PRIMARY_CARE_ELIG_INDICATOR AS SERV_PC_ELIG_IND, 
         SVC_PROV.ENC_PROV_BUNDLE_ID AS SERV_PROV_BUNDLE_ID, 
         SVC_PROV.IND_PRIMARY_ENC_PROV_LOC AS SERV_IND_PRIMARY_ENC_PROV_LOC, 
         SVC_PROV.APCD_ORGID AS SERV_APCD_ORGID, 
         PROV.ID_PROVIDER AS BILL_PROV_ID, 
         PROV.ENC_PROV_ID AS ENC_BILL_PROV_ID, 
         PROV.DSC_ENC_PROV_ID_TYPE AS BILL_PROV_ID_TYPE, 
         PROV.ID_NPI AS BILL_NPI, 
         PROV.CDE_ENC_PROV_TYPE AS ENC_BILL_PROV_TYPE, 
         PROV.NAM_LAST AS BILL_PROV_LNAME, 
         PROV.ADR_STRT1 AS BILL_ADR_STREET1, 
         PROV.ADR_CITY AS BILL_ADR_CITY1, 
         PROV.ADR_STATE AS BILL_ADR_STATE1, 
         PROV.ADR_ZIP AS BILL_ADR_ZIP1, 
         PROV.ADR_MAIL_STRT1 AS BILL_ADR_MAIL_STREET1, 
         PROV.ADR_MAIL_CITY AS BILL_ADR_MAIL_CITY1, 
         PROV.ADR_MAIL_STATE AS BILL_ADR_MAIL_STATE1, 
         PROV.ADR_MAIL_ZIP AS BILL_ADR_MAIL_ZIP1, 
         PROV.NUM_TAX_ID AS BILL_TAX_ID, 
         PROV.IND_ENC_PANEL_OPEN AS BILL_PANEL_OPEN, 
         PROV.PRIMARY_CARE_ELIG_INDICATOR AS BILL_PC_ELIG_IND, 
         PROV.ENC_PROV_BUNDLE_ID AS BILL_PROV_BUNDLE_ID, 
         PROV.IND_PRIMARY_ENC_PROV_LOC AS BILL_IND_PRIMARY_ENC_PROV_LOC, 
         PROV.APCD_ORGID AS BILL_APCD_ORGID, 
         PRS_PROV.ID_PROVIDER AS PRES_PROV_ID, 
         PRS_PROV.ENC_PROV_ID AS ENC_PRES_PROV_ID, 
         PRS_PROV.DSC_ENC_PROV_ID_TYPE AS PRES_PROV_ID_TYPE, 
         NCF.CDE_ENC_PROV_SPEC AS SERV_PROV_SPECIALTY,
         BILL_SPEC.BILL_PROV_SPECIALTY,
         BILL_SPEC.DSC_BILL_PROV_SPECIALTY,
         ENC.CDE_CLM_TYPE AS CLAIM_TYPE, 
         ENC.ENC_CLAIM_NO, 
         ENC.ENC_CLAIM_SUFFIX, 
         ENC.CDE_CLM_DISPOSITION,
         ENC.IND_OFFSET, 
         DRG.CDE_DRUG_CLASS,
         ENCATT.CDE_ENC_DISP_AS_WRTN, 
         ENCATT.DSC_ENC_DISP_AS_WRTN, 
         ENCATT.CDE_ENC_CLAIM_CAT, 
         ENCATT.DSC_ENC_CLAIM_CAT, 
         ENCATT.CDE_ENC_SVC_CAT, 
         ENCATT.DSC_ENC_SVC_CAT, 
         ENCATT.IND_ENC_COMPOUND 
         FROM MHDWPROD.NW.NW_ENCOUNTER_HIST ENC 
         LEFT OUTER JOIN MHDWPROD.NW.NW_ENC_ATTRIBUTE ENCATT ON ENC.ATTRENC_SEQ = ENCATT.ATTRENC_SEQ 
         LEFT OUTER JOIN MHDWPROD.NW.NW_MEMBER MEM ON ENC.MEM_SEQ = MEM.MEM_SEQ  
         LEFT OUTER JOIN MHDWPROD.NW.NW_CLAIM_SERVICE_ATTRIBUTE CSA ON ENC.ATTRSRV_SEQ = CSA.ATTRSRV_SEQ 
         LEFT OUTER JOIN MHDWPROD.NW.NW_PROCEDURE PROC ON ENC.PROC_SEQ = PROC.PROC_SEQ 
         LEFT OUTER JOIN MHDWPROD.NW.NW_DRUG DRG ON ENC.DRUG_SEQ = DRG.DRUG_SEQ 
         LEFT OUTER JOIN MHDWPROD.NW.NW_ENC_PROVIDER PROV ON ENC.BILL_ENCPRV_SEQ = PROV.ENCPRV_SEQ 
         LEFT OUTER JOIN MHDWPROD.NW.NW_ENC_PROVIDER SVC_PROV ON ENC.SRV_ENCPRV_SEQ = SVC_PROV.ENCPRV_SEQ 
         LEFT OUTER JOIN 
         (select * 
         from(
         SELECT distinct enc_prov_id,cde_enc_mco,cde_enc_prov_spec bill_prov_specialty,dsc_enc_prov_spec dsc_bill_prov_specialty,
         case when lag(enc_prov_id) over (partition by enc_prov_id, cde_enc_mco order by enc_prov_id,cde_enc_mco,cde_enc_prov_spec desc) is null then 1 
              else 0 
         end as FirstRecord 
         FROM MHDWPROD.NW.NW_ENC_PROVIDER_SPEC 
         ) where firstrecord=1
         )bill_spec on prov.enc_prov_id = bill_spec.enc_prov_id and prov.cde_enc_mco = bill_spec.cde_enc_mco 
         LEFT OUTER JOIN MHDWPROD.NW.NW_ENC_PROVIDER REF_PROV ON ENC.REF_ENCPRV_SEQ = REF_PROV.ENCPRV_SEQ 
         LEFT OUTER JOIN MHDWPROD.NW.NW_ENC_PROVIDER PRS_PROV ON ENC.PRS_ENCPRV_SEQ = PRS_PROV.ENCPRV_SEQ 
         LEFT OUTER JOIN MHDWPROD.NW.NW_ENC_NONCONF_ATTRIBUTE NCF ON NCF.ATTRENC_NC_SEQ = ENC.ATTRENC_NC_SEQ 
         WHERE  ENC.DOS_FROM_DT BETWEEN TO_DATE('~MONS~','YYYYMMDD')
--                AND ((TO_DATE('~MONS~', 'YYYYMMDD') + INTERVAL '~RUNMNTHS~' MONTH ) -1)
                AND ADD_MONTHS(TO_DATE('~MONS~','YYYYMMDD'),(~RUNMNTHS~)) -1
         AND  ENC.REMIT_THRU_DT = TO_DATE('99991231','YYYYMMDD')
         AND TO_DATE('~ASOFDT~','YYYYMMDD') BETWEEN ENC.WH_FROM_DT AND ENC.WH_THRU_DT 
         AND ENC.CDE_CLM_DISPOSITION <> 'V' 
         AND ENC.IND_OFFSET = 'N' 
         AND ENC.CDE_ENC_MCO IN('CCA','UHC','NAV','SWH','TFT','BHP','MGS');

         --TRUNCATE TABLE MHTEAM.DWDQ.INF_B_SC_STG_SCO_PROVIDER_MISSING_IDS;

INSERT INTO MHTEAM.DWDQ.INF_B_SC_STG_~PN~_PROVIDER_MISSING_IDS

with INF_SC_SCO_PROVIDER_SERV 
AS (
select distinct 'Servicing' AS prov_type, RUN_DATE, ds1.cde_enc_mco,ods_servicing_id AS prov_id
from(
select RUN_DATE, CDE_ENC_MCO, ENC_SERV_PROV_ID, ODSENC_SEQ
from MHTEAM.DWDQ.INF_B_SC_STG_SCO_PROVIDER
where ENC_SERV_PROV_ID IN (' ','-','+','#') 
and cde_enc_mco in ('BHP','UHC','NAV','SWH','TFT','CCA','MGS')    
AND RUN_DATE = TO_DATE('~ASOFDT~','YYYYMMDD')    
)ds1 inner join
(select cde_enc_mco,claim_number,odsenc_seq,servicing_provider_id ods_servicing_id,servicing_provider_id_type ods_servicing_typ
from MHDWPROD.NW.ods_encounter) ods on ods.odsenc_seq=ds1.odsenc_seq
order by cde_enc_mco, ods_servicing_id
),
INF_SC_SCO_PROVIDER_BILL
AS (
select distinct 'Billing' AS prov_type, RUN_DATE, ds1.cde_enc_mco,ods_billing_id AS prov_id
from(
select RUN_DATE, CDE_ENC_MCO, ENC_BILL_PROV_ID, ODSENC_SEQ
from MHTEAM.DWDQ.INF_B_SC_STG_SCO_PROVIDER
where ENC_BILL_PROV_ID IN (' ','-','+','#') 
and cde_enc_mco in ('BHP','UHC','NAV','SWH','TFT','CCA','MGS')    
AND RUN_DATE = TO_DATE('~ASOFDT~','YYYYMMDD')    
)ds1 inner join
(select cde_enc_mco,claim_number,odsenc_seq,billing_provider_id ods_billing_id,billing_provider_id_type ods_billing_typ
from MHDWPROD.NW.ods_encounter) ods on ods.odsenc_seq=ds1.odsenc_seq
order by cde_enc_mco, ods_billing_id
),
INF_SC_SCO_PROVIDER_PRESC
AS (
select distinct 'Prescribing' AS prov_type, RUN_DATE, ds1.cde_enc_mco, ods_prescribing_id AS prov_id--count(distinct ods_prescribING_id)
from(
select RUN_DATE, CDE_ENC_MCO, ENC_PRES_PROV_ID, ODSENC_SEQ
from MHTEAM.DWDQ.INF_B_SC_STG_SCO_PROVIDER
where ENC_PRES_PROV_ID IN (' ','-','+','#') 
--and cde_enc_mco='BHP' 
and cde_enc_mco in ('BHP','UHC','NAV','SWH','TFT','CCA','MGS')    
AND RUN_DATE = TO_DATE('~ASOFDT~','YYYYMMDD')    
and CLAIM_TYPE = 'P' AND CDE_DRUG_CLASS='F'
)ds1 inner join
(select cde_enc_mco,claim_number,odsenc_seq,prescribing_prov_id ods_prescribing_id
from MHDWPROD.NW.ods_encounter) ods on ods.odsenc_seq=ds1.odsenc_seq
--order by cde_enc_mco, ods_prescribing_id
)
select * from (

select S_RUN_DATE, S_MCO, S_PROV_ID, s.rnk S_RNK, B_RUN_DATE, B_MCO, B_PROV_ID, b.rnk B_RNK, P_RUN_DATE, P_MCO, P_PROV_ID, p.rnk P_RNK
FROM (
(
select PROV_ID AS S_PROV_ID, CDE_ENC_MCO S_MCO, RUN_DATE S_RUN_DATE, RANK()
OVER (PARTITION BY CDE_ENC_MCO ORDER BY RUN_DATE, CDE_ENC_MCO, PROV_ID) RNK 
from INF_SC_SCO_PROVIDER_SERV
) S
LEFT JOIN
(
select PROV_ID AS B_PROV_ID, CDE_ENC_MCO B_MCO, RUN_DATE B_RUN_DATE, RANK()
OVER (PARTITION BY CDE_ENC_MCO ORDER BY RUN_DATE, CDE_ENC_MCO, PROV_ID) RNK 
from INF_SC_SCO_PROVIDER_BILL
) B ON S_RUN_DATE = B_RUN_DATE AND S_MCO = B_MCO AND S.RNK = B.RNK
LEFT JOIN
(
select PROV_ID AS P_PROV_ID, CDE_ENC_MCO P_MCO, RUN_DATE P_RUN_DATE, RANK()
OVER (PARTITION BY CDE_ENC_MCO ORDER BY RUN_DATE, CDE_ENC_MCO, PROV_ID) RNK 
from INF_SC_SCO_PROVIDER_PRESC
) P ON S_RUN_DATE = P_RUN_DATE AND S_MCO = P_MCO AND S.RNK = P.RNK
)

UNION

select S_RUN_DATE, S_MCO, S_PROV_ID, s.rnk S_RNK, B_RUN_DATE, B_MCO, B_PROV_ID, b.rnk B_RNK, P_RUN_DATE, P_MCO, P_PROV_ID, p.rnk P_RNK
FROM (
(
select PROV_ID AS B_PROV_ID, CDE_ENC_MCO B_MCO, RUN_DATE B_RUN_DATE, RANK()
OVER (PARTITION BY CDE_ENC_MCO ORDER BY RUN_DATE, CDE_ENC_MCO, PROV_ID) RNK 
from INF_SC_SCO_PROVIDER_BILL
) B
LEFT JOIN
(
select PROV_ID AS S_PROV_ID, CDE_ENC_MCO S_MCO, RUN_DATE S_RUN_DATE, RANK()
OVER (PARTITION BY CDE_ENC_MCO ORDER BY RUN_DATE, CDE_ENC_MCO, PROV_ID) RNK 
from INF_SC_SCO_PROVIDER_SERV
) S ON S_RUN_DATE = B_RUN_DATE AND S_MCO = B_MCO AND S.RNK = B.RNK
LEFT JOIN
(
select PROV_ID AS P_PROV_ID, CDE_ENC_MCO P_MCO, RUN_DATE P_RUN_DATE, RANK()
OVER (PARTITION BY CDE_ENC_MCO ORDER BY RUN_DATE, CDE_ENC_MCO, PROV_ID) RNK 
from INF_SC_SCO_PROVIDER_PRESC
) P ON B_RUN_DATE = P_RUN_DATE AND B_MCO = P_MCO AND B.RNK = P.RNK
)

UNION

select S_RUN_DATE, S_MCO, S_PROV_ID, s.rnk S_RNK, B_RUN_DATE, B_MCO, B_PROV_ID, b.rnk B_RNK, P_RUN_DATE, P_MCO, P_PROV_ID, p.rnk P_RNK
FROM (
(
select PROV_ID AS P_PROV_ID, CDE_ENC_MCO P_MCO, RUN_DATE P_RUN_DATE, RANK()
OVER (PARTITION BY CDE_ENC_MCO ORDER BY RUN_DATE, CDE_ENC_MCO, PROV_ID) RNK 
from INF_SC_SCO_PROVIDER_PRESC
) P
LEFT JOIN
(
select PROV_ID AS S_PROV_ID, CDE_ENC_MCO S_MCO, RUN_DATE S_RUN_DATE, RANK()
OVER (PARTITION BY CDE_ENC_MCO ORDER BY RUN_DATE, CDE_ENC_MCO, PROV_ID) RNK 
from INF_SC_SCO_PROVIDER_SERV
) S ON S_RUN_DATE = P_RUN_DATE AND S_MCO = P_MCO AND S.RNK = P.RNK
LEFT JOIN
(
select PROV_ID AS B_PROV_ID, CDE_ENC_MCO B_MCO, RUN_DATE B_RUN_DATE, RANK()
OVER (PARTITION BY CDE_ENC_MCO ORDER BY RUN_DATE, CDE_ENC_MCO, PROV_ID) RNK 
from INF_SC_SCO_PROVIDER_BILL
) B ON B_RUN_DATE = P_RUN_DATE AND B_MCO = P_MCO AND B.RNK = P.RNK
)

);

--TRUNCATE TABLE MHTEAM.DWDQ.INF_B_SC_STG_SCO_PROVIDER_STATS;

INSERT INTO MHTEAM.DWDQ.INF_B_SC_STG_SCO_PROVIDER_STATS

select 
val1, val2, val7, val3, val4, val8, val5, val6, val9,
nval16, nval17, nval18, 
r1, r3, r5, r6, r7, r8, r9, r16, r17, r18, c1, c3, c5, c6, c7, c8, c9, c16, c17, c18

from (

/*#claims submitted - output to table (same across servicing, billing)*/
select r1, c1, val1, val2, r3, c3, val3, val4
from (
select run_date r1, cde_enc_mco c1,count(*)val1, count(*) val2 --,count(distinct enc_claim_no)--,count(distinct enc_claim_no||enc_claim_suffix)
from MHTEAM.DWDQ.INF_B_SC_STG_SCO_PROVIDER
where cde_enc_mco in ('BHP','UHC','NAV','SWH','TFT','CCA','MGS') 
AND RUN_DATE = TO_DATE('~ASOFDT~','YYYYMMDD')    
group by run_date, cde_enc_mco
) v1 JOIN
(
/*#claims with provider info (claim has provider ID in ODS) -output to table*/
select run_date r3, cde_enc_mco c3,sum(ods_serv) val3,sum(ods_bill) val4
from
(select run_date, ds1.cde_enc_mco,case when ods_servicing_id not in ('+','-',' ') then 1 else 0 end as ods_serv,
case when ods_billing_id not in ('+','-',' ') then 1 else 0 end as ods_bill
from(
select cy19.*
from MHTEAM.DWDQ.INF_B_SC_STG_SCO_PROVIDER cy19
where cde_enc_mco in ('BHP','UHC','NAV','SWH','TFT','CCA','MGS') 
AND RUN_DATE = TO_DATE('~ASOFDT~','YYYYMMDD')    
)ds1 inner join
(select cde_enc_mco,claim_number,odsenc_seq,servicing_provider_id ods_servicing_id,servicing_provider_id_type ods_servicing_typ,
        billing_provider_id ods_billing_id,billing_provider_id_type ods_billing_typ
from MHDWPROD.NW.ods_encounter)ods on ods.odsenc_seq=ds1.odsenc_seq
)group by run_date, cde_enc_mco
) v2 ON r1 = r3 and c1 = c3

) VO1,
(

select r5, c5, val5, r6, c6, val6
from (
/*# claims with servicing/billing provider ID (Per evaluation: Claims with provider table match) -output to table*/
select run_date r5, cde_enc_mco c5 ,count(*) val5--,count(distinct enc_claim_no)--,count(distinct enc_claim_no||enc_claim_suffix)
from MHTEAM.DWDQ.INF_B_SC_STG_SCO_PROVIDER
where ENC_SERV_PROV_ID NOT IN (' ','-','+','#') 
AND cde_enc_mco in ('BHP','UHC','NAV','SWH','TFT','CCA','MGS') 
AND RUN_DATE = TO_DATE('~ASOFDT~','YYYYMMDD')    
group by run_date, cde_enc_mco
) v5 JOIN
(
select run_date r6, cde_enc_mco c6,count(*) val6--,count(distinct enc_claim_no)--,count(distinct enc_claim_no||enc_claim_suffix)
from MHTEAM.DWDQ.INF_B_SC_STG_SCO_PROVIDER
where ENC_BILL_PROV_ID NOT IN (' ','-','+','#') 
AND cde_enc_mco in ('BHP','UHC','NAV','SWH','TFT','CCA','MGS') 
AND RUN_DATE = TO_DATE('~ASOFDT~','YYYYMMDD')    
group by run_date, cde_enc_mco
--we don't know if these claims are missing servicing provider claim info on the claim or if they have this info the claim, but it was not present
--in the provider table at the time of the claims load
) v6 ON r5 = r6 AND c5 = c6

) VO2,
(

/************************************************************
          *********PRESCRIBING*********************
 ************************************************************/
 
select r7, c7, val7, r8, c8, val8, r9, c9, val9
from (

/*#claims submitted - output to table (prescribing)*/
select RUN_DATE AS r7, CDE_ENC_MCO AS c7, nvl(val7,0) AS val7
FROM (
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'BHP' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'UHC' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'NAV' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'SWH' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'TFT' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'CCA' AS CDE_ENC_MCO from DUAL 
UNION
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'MGS' AS CDE_ENC_MCO from DUAL
) S1 LEFT JOIN
(
select run_date r7, cde_enc_mco c7,count(*) val7--,count(distinct enc_claim_no)--,count(distinct enc_claim_no||enc_claim_suffix)
from MHTEAM.DWDQ.INF_B_SC_STG_SCO_PROVIDER
where cde_enc_mco in ('BHP','UHC','NAV','SWH','TFT','CCA','MGS') 
AND RUN_DATE = TO_DATE('~ASOFDT~','YYYYMMDD')    
and CLAIM_TYPE = 'P' AND CDE_DRUG_CLASS='F'
group by run_date, cde_enc_mco
) S2 ON S1.RUN_DATE = S2.r7 AND S1.CDE_ENC_MCO = S2.c7

) v7,
(
/*#claims with provider info (claim has provider ID in ODS) -output to table*/
select RUN_DATE AS r8, CDE_ENC_MCO AS c8, nvl(val8,0) AS val8
FROM (
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'BHP' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'UHC' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'NAV' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'SWH' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'TFT' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'CCA' AS CDE_ENC_MCO from DUAL 
UNION
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'MGS' AS CDE_ENC_MCO from DUAL
) S1 LEFT JOIN
(
select run_date r8, cde_enc_mco c8,sum(ods_prescrib) val8
from
(select run_date, ds1.cde_enc_mco,case when ods_prescribing_id not in ('+','-',' ') then 1 else 0 end as ods_prescrib
from(
select cy19.*
from MHTEAM.DWDQ.INF_B_SC_STG_SCO_PROVIDER cy19
where cde_enc_mco in ('BHP','UHC','NAV','SWH','TFT','CCA','MGS') 
AND RUN_DATE = TO_DATE('~ASOFDT~','YYYYMMDD')    
and CLAIM_TYPE = 'P' AND CDE_DRUG_CLASS='F'
)ds1 inner join
(select cde_enc_mco,claim_number,odsenc_seq,prescribing_prov_id ods_prescribing_id
from MHDWPROD.NW.ods_encounter)ods on ods.odsenc_seq=ds1.odsenc_seq
)group by run_date, cde_enc_mco
) S2 ON S1.RUN_DATE = S2.r8 AND S1.CDE_ENC_MCO = S2.c8
) v8,
(
/*# claims with PRESCRIBing provider ID (Per evaluation: Claims with provider table match) -output to table*/
select RUN_DATE AS r9, CDE_ENC_MCO AS c9, nvl(val9,0) AS val9
FROM (
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'BHP' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'UHC' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'NAV' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'SWH' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'TFT' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'CCA' AS CDE_ENC_MCO from DUAL 
UNION
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'MGS' AS CDE_ENC_MCO from DUAL
) S1 LEFT JOIN
(
select run_date r9, cde_enc_mco c9,count(*) val9--,count(distinct enc_claim_no)--,count(distinct enc_claim_no||enc_claim_suffix)
from MHTEAM.DWDQ.INF_B_SC_STG_SCO_PROVIDER
where ENC_PRES_PROV_ID NOT IN (' ','-','+','#') 
AND cde_enc_mco in ('BHP','UHC','NAV','SWH','TFT','CCA','MGS') 
AND RUN_DATE = TO_DATE('~ASOFDT~','YYYYMMDD')    
and CLAIM_TYPE = 'P' AND CDE_DRUG_CLASS='F'
group by run_date, cde_enc_mco
--we don't know if these claims are missing servicing provider claim info on the claim or if they have this info the claim, but it was not present
--in the provider table at the time of the claims load
) S2 ON S1.RUN_DATE = S2.r9 AND S1.CDE_ENC_MCO = S2.c9
) v9
WHERE r7 = r8 AND r7 = r9 AND c7 = c8 AND c7 = c9

) VO3,
(
select RUN_DATE AS r16, CDE_ENC_MCO AS c16, nvl(val16,0) AS nval16
FROM (
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'BHP' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'UHC' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'NAV' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'SWH' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'TFT' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'CCA' AS CDE_ENC_MCO from DUAL 
UNION
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'MGS' AS CDE_ENC_MCO from DUAL
) S1 LEFT JOIN
(
select r16, c16, count(ods_servicing_id) val16 from (

/*Listing Servicing ID that is missing from NW provider table or claim/provider link is broken due to timing of load -output total and listing to table*/
select distinct run_date r16, ds1.cde_enc_mco c16,ods_servicing_id 
from(
select *
from MHTEAM.DWDQ.INF_B_SC_STG_SCO_PROVIDER
where ENC_SERV_PROV_ID IN (' ','-','+','#') 
AND cde_enc_mco in ('BHP','UHC','NAV','SWH','TFT','CCA','MGS') 
AND RUN_DATE = TO_DATE('~ASOFDT~','YYYYMMDD')    
)ds1 inner join
(select cde_enc_mco,claim_number,odsenc_seq,servicing_provider_id ods_servicing_id,servicing_provider_id_type ods_servicing_typ
from MHDWPROD.NW.ods_encounter)ods on ods.odsenc_seq=ds1.odsenc_seq
order by ds1.cde_enc_mco

) group by r16, c16
) S2 ON S1.RUN_DATE = S2.r16 AND S1.CDE_ENC_MCO = S2.c16
) V04,
(
select RUN_DATE AS r17, CDE_ENC_MCO AS c17, nvl(val17,0) AS nval17
FROM (
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'BHP' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'UHC' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'NAV' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'SWH' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'TFT' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'CCA' AS CDE_ENC_MCO from DUAL 
UNION
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'MGS' AS CDE_ENC_MCO from DUAL
) S1 LEFT JOIN
(
select r17, c17, count(ods_billing_id) val17 from (

select distinct run_date r17, ds1.cde_enc_mco c17 ,ods_billing_id 
from(
select *
from MHTEAM.DWDQ.INF_B_SC_STG_SCO_PROVIDER
where ENC_BILL_PROV_ID IN (' ','-','+','#') 
and cde_enc_mco in ('BHP','UHC','NAV','SWH','TFT','CCA','MGS')
AND RUN_DATE = TO_DATE('~ASOFDT~','YYYYMMDD')    
)ds1 inner join
(select cde_enc_mco,claim_number,odsenc_seq,billing_provider_id ods_billing_id,billing_provider_id_type ods_billing_typ
from MHDWPROD.NW.ods_encounter)ods on ods.odsenc_seq=ds1.odsenc_seq
order by ds1.cde_enc_mco

) group by r17, c17
) S2 ON S1.RUN_DATE = S2.r17 AND S1.CDE_ENC_MCO = S2.c17

) V05,
(
select RUN_DATE AS r18, CDE_ENC_MCO AS c18, nvl(val18,0) AS nval18
FROM (
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'BHP' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'UHC' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'NAV' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'SWH' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'TFT' AS CDE_ENC_MCO from DUAL 
UNION 
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'CCA' AS CDE_ENC_MCO from DUAL 
UNION
select TO_DATE('~ASOFDT~','YYYYMMDD') AS RUN_DATE, 'MGS' AS CDE_ENC_MCO from DUAL
) S1 LEFT JOIN
(
select r18, c18, count(ods_prescribing_id) val18 from (

/*Listing Prescribing ID that is missing from NW provider table or claim/provider link is broken due to timing of load -output total and listing to table*/
select distinct run_date r18, ds1.cde_enc_mco c18,ods_prescribing_id --count(distinct ods_prescribING_id)
from(
select *
from MHTEAM.DWDQ.INF_B_SC_STG_SCO_PROVIDER
where ENC_PRES_PROV_ID IN (' ','-','+','#') 
and cde_enc_mco in ('BHP','UHC','NAV','SWH','TFT','CCA','MGS')    
AND RUN_DATE = TO_DATE('~ASOFDT~','YYYYMMDD')    
and CLAIM_TYPE = 'P' AND CDE_DRUG_CLASS='F'
)ds1 inner join
(select cde_enc_mco,claim_number,odsenc_seq,prescribing_prov_id ods_prescribing_id
from MHDWPROD.NW.ods_encounter)ods on ods.odsenc_seq=ds1.odsenc_seq
order by ds1.cde_enc_mco

) group by r18, c18
) S2 ON S1.RUN_DATE = S2.r18 AND S1.CDE_ENC_MCO = S2.c18

) VO6

where r1 = r3
and   r1 = r5
and   r1 = r6
and   r1 = r7
and   r1 = r8
and   r1 = r9
and   r1 = r16
and   r1 = r17
and   r1 = r18
and   c1 = c3
and   c1 = c5
and   c1 = c6
and   c1 = c7
and   c1 = c8
and   c1 = c9
and   c1 = c16
and   c1 = c17
and   c1 = c18
order by r1, c1;

