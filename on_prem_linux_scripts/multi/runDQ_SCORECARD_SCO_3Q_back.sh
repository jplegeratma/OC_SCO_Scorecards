#!/bin/sh
# runDQ_SCORECARD_SCO_3Q_back.sh

LOG_FILE=../logs/DQ_SCORECARD_SCO_3Q_BACK_`date +%m%d%y%H%M%S`.sh.log
export LOG_FILE

# Source LB env
source ~/.dq_profile

cd /home/dq/dqs/scheduling/scripts

export SO_PARAM_FILE=SO_PARAMETERS.xml

export SO_RUN_DATE=`date +%Y%m%d`
#export SO_RUN_DATE=20200601

#set the offsets
#3Q run 9 months offset 3 months run
 
#SCO NUMBER OF MONTHS BETWEEN RUN DATE AND MAX DOS
export SO_RUN_DATE_TO_MAX_OFFSET_MNTHS=9

#SCO NUMBER OF MONTHS BEING RUN 3 FOR QTR 12 FOR YEAR
export SO_RUN_MNTHS=3

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

