#!/bin/sh
LOG_FILE=../logs/DQ_SCORECARD`date +%m%d%y%H%M%S`.sh.log

export LOG_FILE

# Source LB env
source ~/.dq_profile

export SC_MIN_DOS=20180301
export SC_MAX_DOS=20180631
export SC_MON=MAR2018_JUN2018
#export SC_PARAM_FILE=$INFA_HOME/server/infa_shared/BWParam/DQ/SC_PARAMETERS.xml
export SC_PARAM_FILE=SC_PARAMETERS.xml

# * * * * * * * * * * * * * * * *    I M P O R T A N T    * * * * * * * * * * * * * * * *
#                                                                                       *
#    Only one of the 3 calls below should be uncommented  and run at any given time     *
#                                                                                       *
# * * * * * * * * * * * * * * * *    I M P O R T A N T    * * * * * * * * * * * * * * * *
#Execution using the application.sh
./DQ_SCORECARD.sh > ${LOG_FILE} 2>&1 &

## Full execution
#./DQ_SCORECARD.sh  > ${LOG_FILE} 2>&1 &

## Full execution - Restart
#./DQ_SCORECARD.sh  -s 7 > ${LOG_FILE} 2>&1 &
