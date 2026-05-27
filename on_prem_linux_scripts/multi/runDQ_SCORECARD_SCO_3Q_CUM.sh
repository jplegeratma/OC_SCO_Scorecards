#!/bin/sh
# runDQ_SCORECARD_SCO_3Q_CUM.sh

LOG_FILE=../logs/DQ_SCORECARD_SCO_3Q_CUM_`date +%m%d%y%H%M%S`.sh.log
export LOG_FILE

# Source LB env
source ~/.dq_profile

cd /home/dq/dqs/scheduling/scripts

export SO_PARAM_FILE=SO_PARAMETERS.xml

export SO_RUN_DATE=`date +%Y%m%d`
#export SO_RUN_DATE=20200601

#set the offsets
#3Q_CUM is run at end of November for first 3 quarters for the provider report - run 2 months offset 9 months run
#If run in begining of December set offset to 3 
 
#OC NUMBER OF MONTHS BETWEEN RUN DATE AND MAX DOS
export SO_RUN_DATE_TO_MAX_OFFSET_MNTHS=2

export SO_RUN_MNTHS=9

./multi_DQ_SCORECARD_SCO.sh >> ${LOG_FILE} 2>&1 &

# sleep to let the script finish
sleep 15

#* * * * * * * * * * * * * * * *    I M P O R T A N T    * * * * * * * * * * * * * * * *
#                                                                                       *
#    Only one of the 3 calls below should be uncommented  and run at any given time     *
#                                                                                       *
# * * * * * * * * * * * * * * * *    I M P O R T A N T    * * * * * * * * * * * * * * * *

#Execution using the application.sh
./DQ_SCORECARD_SCO.sh >> ${LOG_FILE} 2>&1 &

