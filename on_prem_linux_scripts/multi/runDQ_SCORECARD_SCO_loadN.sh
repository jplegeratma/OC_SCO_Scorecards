#!/bin/sh
LOG_FILE=../logs/DQ_SCORECARD_SCO`date +%m%d%y%H%M%S`.sh.log

export LOG_FILE

# Source LB env
source ~/.dq_profile

cd /home/dq/dqs/scheduling/scripts

export SO_PARAM_FILE=SO_PARAMETERS.xml

#export SO_RUN_DATE=`date +%Y%m%d`

#export SO_RUN_DATE=20191231

# * * * * * * * * * * * * * * * *    I M P O R T A N T    * * * * * * * * * * * * * * * *
#                                                                                       *
#    Only one of the 3 calls below should be uncommented  and run at any given time     *
#                                                                                       *
# * * * * * * * * * * * * * * * *    I M P O R T A N T    * * * * * * * * * * * * * * * *

#--MCO_MBHP_DOS_SEP2019_DEC2019
export SO_RUN_DATE=20200531
./DQ_SCORECARD_SCO.sh > ${LOG_FILE} 2>&1 &
sleep 1800

#--MCO_MBHP_DOS_OCT2019_JAN2020
export SO_RUN_DATE=20200630 #20200709
./DQ_SCORECARD_SCO.sh > ${LOG_FILE} 2>&1 &
sleep 1800

#--MCO_MBHP_DOS_NOV2019_FEB2020
export SO_RUN_DATE=20200731
./DQ_SCORECARD_SCO.sh > ${LOG_FILE} 2>&1 &
sleep 1800

#--MCO_MBHP_DOS_DEC2019_MAR2020
export SO_RUN_DATE=20200831
./DQ_SCORECARD_SCO.sh > ${LOG_FILE} 2>&1 &
sleep 1800

#--MCO_MBHP_DOS_JAN2020_APR2020
export SO_RUN_DATE=20200930
./DQ_SCORECARD_SCO.sh > ${LOG_FILE} 2>&1 &
sleep 1800

#--MCO_MBHP_DOS_FEB2020_MAY2020
export SO_RUN_DATE=20201031 #20201102
./DQ_SCORECARD_SCO.sh > ${LOG_FILE} 2>&1 &
sleep 1800

#--MCO_MBHP_DOS_MAR2020_JUN2020
export SO_RUN_DATE=20201130
./DQ_SCORECARD_SCO.sh > ${LOG_FILE} 2>&1 &
sleep 1800

#--MCO_MBHP_DOS_APR2020_JUL2020
export SO_RUN_DATE=20201231 #20210104
./DQ_SCORECARD_SCO.sh > ${LOG_FILE} 2>&1 &
sleep 1800

#--MCO_MBHP_DOS_MAY2020_AUG2020
export SO_RUN_DATE=20210129
./DQ_SCORECARD_SCO.sh > ${LOG_FILE} 2>&1 &
sleep 1800

#--MCO_MBHP_DOS_JUN2020_SEP2020
export SO_RUN_DATE=20210225
./DQ_SCORECARD_SCO.sh > ${LOG_FILE} 2>&1 &
sleep 1800

#--MCO_MBHP_DOS_JUL2020_OCT2020
export SO_RUN_DATE=20210331
./DQ_SCORECARD_SCO.sh > ${LOG_FILE} 2>&1 &
sleep 1800

#--MCO_MBHP_DOS_AUG2020_NOV2020
export SO_RUN_DATE=20210430
./DQ_SCORECARD_SCO.sh > ${LOG_FILE} 2>&1 &
#sleep 1800

