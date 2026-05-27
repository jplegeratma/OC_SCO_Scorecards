#!/bin/bash
#-- DQ SCORECARD MONTHLY Load - Workflow execution and MV build
#-- Borrowed from the PDM Weekly load scripts

script_name="DQ_SCORECARD.sh"

# common shell functions
. ../functions.sh

# Constants
USAGE="Usage: DQ_SCORECARD.sh -U <dw schema> -P <dw schema_password> -d <SID> -i <informatica server> -f <informatica folder> [-s <step number>]"

email_recepient="JP.Leger@mass.gov"


# source the application constants
if [ -x $DQBINHOME/application.sh ]
then
    . $DQBINHOME/application.sh
else
    echo "Error: ($script_name) cannot execute \$DQBINHOME/application.sh (file not found or not executable)" 1>&2
    exit 1
fi

# check input parameters
if [ $# -lt "1" -a $# -gt "14" ]  # Script invoked without enough command-line args?
then
    echo "Error: ($script_name) you must supply all arguments except -s <step number>, which is optional" 2>&1
    echo "$USAGE"  1>&2
    exit 1
fi

batch_step=0

while getopts ":U:P:d:u:p:i:f:s:" Option
do
  case $Option in
    U     ) DW_USER=$OPTARG;;
    P     ) DW_PASS=$OPTARG;;
    d     ) DW_SID=$OPTARG;;
    u     ) INF_USER=$OPTARG;;
    p     ) INF_PASS=$OPTARG;;
    i     ) INF_SERVER=$OPTARG;;
    f     ) INF_FOLDER=$OPTARG;;
    s     ) batch_step=$OPTARG;;
    *     ) echo "Error: (DQ_SCORECARD.sh) Unknown switch $Option"
            echo "$USAGE"
            exit 1;;
  esac
done
shift $(($OPTIND - 1))

# = = = = = = = = = = = =  V A R I A B L E S .

# = = = = = = = = = = = =  F U N C T I O N S  .
step_0 ()
{


    ########## Stop any workflows that might already be running.
    echo "Info: ($script_name) Stopping any Workflows that were already running."
    #pmcmd stopworkflow -sv $INF_SERVER -d $DOMAIN -u $INF_USER -p $INF_PASS -f $INF_FOLDER -wait wf_pdm_ufr
    #-- Special handling of errorlevel 3 which is expected if we stop a workflow that is already stopped.
    if [[ ($? -gt 0 && $? -lt 3)  || $? -ge 4 ]]
    then
    	send_email "${email_recepient}" "Error in ($script_name)" "step 0 failed - Stopping Workflows "
        error_msg_ex " step 0, stopping workflows "
    fi

    echo "Info: ($script_name) Stop of currently running workflows done at: `date` "

    sleep 20
    step_1
}

step_1 ()
{
    ########## Run Application: APP_INF_B_SC_MCO_MBHP_DOS Workflow: WKF_INF_B_SC_MCO_MBHP_DOS
    echo "Info: ($script_name) Executing Workflow  - WKF_INF_B_SC_MCO_MBHP_DOS"

     success_code="1"
    cntr="3"
    cnt="1"

    while [[ "$success_code" -eq 1 && "$cnt" -le "$cntr" ]]
    do
            infacmd.sh wfs startWorkflow -dn $DOMAIN -sn $INF_SERVER -un $INF_USER -pd $INF_PASS -a APP_INF_B_SC_MCO_MBHP_DOS -wf WKF_INF_B_SC_MCO_MBHP_DOS -pf SC_PARAMETERS.xml

            if [ $? -gt 0 ]
            then
                    success_code="1"
            else
                success_code="0"
            fi

            cnt=`expr $cnt + 1`
    done

    if [ "$success_code" -eq 0 ]
       then
            echo "Info: ($script_name) APP_INF_B_SC_MCO_MBHP_DOS completed at: `date` "
            sleep 20
#            step_2
       else
            send_email "${email_recepient}" "Error in ($script_name)" "step 1 failed - APP_INF_B_SC_MCO_MBHP_DOS failed "
            error_msg_ex  " step 1, executing APP_INF_B_SC_MCO_MBHP_DOS "
        fi

}



# = = = = = = = = = = = =  M A I N

case "$batch_step" in
    "0" )      step_0 ;;
    "1" )      step_1 ;;
    "2" )      step_2 ;;
     *  ) echo "$USAGE";;
esac  # jump to a particular point in script

echo "DQ SCORECARD Informatica Job completed successfully."
send_email "${email_recepient}" "($script_name) is done" "DQ SCORECARD Informatica Job completed successfully."
echo "Info: ($script_name) DQ SCORECARD Monthly Load -- Completed at: `date` "
echo "Info: ($script_name) Check out the log file:  $LOG_FILE "
