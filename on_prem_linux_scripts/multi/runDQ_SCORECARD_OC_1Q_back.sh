#!/bin/sh
# runDQ_SCORECARD_OC_1Q_back.sh

LOG_FILE=../logs/DQ_SCORECARD_OC_1Q_BACK_`date +%m%d%y%H%M%S`.sh.log
export LOG_FILE

# Source LB env
source ~/.dq_profile

cd /home/dq/dqs/scheduling/scripts

export OC_PARAM_FILE=OC_PARAMETERS.xml

export OC_RUN_DATE=`date +%Y%m%d`
#export OC_RUN_DATE=20200601

#set the offsets
#1Q run 3 months offset 3 months run
 
#OC NUMBER OF MONTHS BETWEEN RUN DATE AND MAX DOS
export OC_RUN_DATE_TO_MAX_OFFSET_MNTHS=3

#OC NUMBER OF MONTHS BEING RUN 3 FOR QTR 12 FOR YEAR
export OC_RUN_MNTHS=3

./multi_DQ_SCORECARD_OC.sh >> ${LOG_FILE} 2>&1 &

# sleep to let the script finish
sleep 15

#* * * * * * * * * * * * * * * *    I M P O R T A N T    * * * * * * * * * * * * * * * *
#                                                                                       *
#    Only one of the 3 calls below should be uncommented  and run at any given time     *
#                                                                                       *
# * * * * * * * * * * * * * * * *    I M P O R T A N T    * * * * * * * * * * * * * * * *

#Execution using the application.sh
./DQ_SCORECARD_OC.sh >> ${LOG_FILE} 2>&1 &

