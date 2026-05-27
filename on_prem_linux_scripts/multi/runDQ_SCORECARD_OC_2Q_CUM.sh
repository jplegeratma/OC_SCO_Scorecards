#!/bin/sh
# runDQ_SCORECARD_OC_2Q_CUM.sh

LOG_FILE=../logs/DQ_SCORECARD_OC_2Q_CUM_`date +%m%d%y%H%M%S`.sh.log
export LOG_FILE

# Source LB env
source ~/.dq_profile

cd /home/dq/dqs/scheduling/scripts

export OC_PARAM_FILE=OC_PARAMETERS.xml

export OC_RUN_DATE=`date +%Y%m%d`
#export OC_RUN_DATE=20200601

#set the offsets
#2Q_CUM is run at end of August for first 2 quarters for the provider report - run 2 months offset 6 months run
#If run in begining of September set offset to 3 
 
#OC NUMBER OF MONTHS BETWEEN RUN DATE AND MAX DOS
export OC_RUN_DATE_TO_MAX_OFFSET_MNTHS=2

export OC_RUN_MNTHS=6

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

