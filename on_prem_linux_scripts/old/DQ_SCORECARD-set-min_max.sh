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
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Name:    get_run_date (db_connect_string)
# Notes:   Taken from function get_run_date
# This may be written as a function 
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#get_run_date ()
{
        # Local variables
        local lgrd_db_connect_str="${DW_USER}/${DW_PASS}@${DW_SID}"

echo "lgrd_db_connect_str: $lgrd_db_connect_str"
echo $SC_MON
echo $SC_MIN_DOS
echo $SC_MAX_DOS

        # Get the run date from dw_params table
        local query="select param_value from INF_B_DQ_PARAMS where param_name = 'SC_RUN_DATE'"

        lgrd_run_date=`process_sql "${lgrd_db_connect_str}" "${query}"`

        # Check for any sql errors
        local ora_error=`echo $lgrd_run_date | egrep '((ORA\-[0-9]+)|(PLS\-[0-9]+)|(SP2-[0-9]+)).*'`
        if [ -n "${ora_error}" ]
        then
                 lgrd_run_date=`date +%Y%m%d`
        fi

        # Echo the run date - so that the caller gets the run date result
        echo "$lgrd_run_date"

        step_2
}


step_2 ()
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Name:    get_batch_seq (db_connect_string)
# Notes:   Taken from function get_run_date
# This may be written as a function
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#get_batch_seq ()
{
        # Local variables
        local lgrd_db_connect_str="${DW_USER}/${DW_PASS}@${DW_SID}"

        # Get the run date from dw_params table
        local query="select param_value from INF_B_DQ_PARAMS where param_name = 'SC_BATCH_SEQ'"

        lgrd_batch_seq=`process_sql "${lgrd_db_connect_str}" "${query}"`

        # Check for any sql errors
        local ora_error=`echo $lgrd_batch_seq | egrep '((ORA\-[0-9]+)|(PLS\-[0-9]+)|(SP2-[0-9]+)).*'`
        if [ -n "${ora_error}" ]
        then
                 echo "${ora_error}"
        fi

        # Echo the run date - so that the caller gets the run date result
        echo "$lgrd_batch_seq"

        step_3
}

step_3 ()
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Name:    set_SC_MON (db_connect_string)
# Notes:   Taken from function get_run_date
# This may be written as a function
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#set_SC_MON ()
{
echo $SC_MON
echo $SC_MIN_DOS
echo $SC_MAX_DOS


        # Local variables
        local lgrd_db_connect_str="${DW_USER}/${DW_PASS}@${DW_SID}"

        # Get the run date from dw_params table
        local query="update INF_B_DQ_PARAMS set PARAM_VALUE = '${SC_MON}' where PARAM_NAME = 'SC_MON'";

        local lora_error=`process_sql "${lgrd_db_connect_str}" "${query}"`

        # Check for any sql errors
        local ora_error=`echo $lora_error | egrep '((ORA\-[0-9]+)|(PLS\-[0-9]+)|(SP2-[0-9]+)).*'`
        if [ -n "${ora_error}" ]
        then
                 echo "${ora_error}"
        fi


        step_4
}

step_4 ()
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Name:    set_SC_MIN_DOS (db_connect_string)
# Notes:   Taken from function get_run_date
# This may be written as a function
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#set_SC_MIN_DOS ()
{
echo $SC_MON
echo $SC_MIN_DOS
echo $SC_MAX_DOS


        # Local variables
        local lgrd_db_connect_str="${DW_USER}/${DW_PASS}@${DW_SID}"

        # Get the run date from dw_params table
        local query="update INF_B_DQ_PARAMS set PARAM_VALUE = '${SC_MIN_DOS}' where PARAM_NAME = 'SC_MIN_DOS'";

        local lora_error=`process_sql "${lgrd_db_connect_str}" "${query}"`

        # Check for any sql errors
        local ora_error=`echo $lora_error | egrep '((ORA\-[0-9]+)|(PLS\-[0-9]+)|(SP2-[0-9]+)).*'`
        if [ -n "${ora_error}" ]
        then
                 echo "${ora_error}"
        fi


        step_5
}

step_5 ()
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Name:    set_SC_MAX_DOS (db_connect_string)
# Notes:   Taken from function get_run_date
# This may be written as a function
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#set_SC_MAX_DOS ()
{
echo $SC_MON
echo $SC_MIN_DOS
echo $SC_MAX_DOS


        # Local variables
        local lgrd_db_connect_str="${DW_USER}/${DW_PASS}@${DW_SID}"

        # Get the run date from dw_params table
        local query="update INF_B_DQ_PARAMS set PARAM_VALUE = '${SC_MAX_DOS}' where PARAM_NAME = 'SC_MAX_DOS'";

        local lora_error=`process_sql "${lgrd_db_connect_str}" "${query}"`

        # Check for any sql errors
        local ora_error=`echo $lora_error | egrep '((ORA\-[0-9]+)|(PLS\-[0-9]+)|(SP2-[0-9]+)).*'`
        if [ -n "${ora_error}" ]
        then
                 echo "${ora_error}"
        fi


        step_6
}

step_6 ()
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Name:    write_SC_PARAM_FILE (db_connect_string)
# Notes:   Taken from function get_run_date
# This may be written as a function
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#write_SC_PARAM_FILE ()
{
echo $SC_MON
echo $SC_MIN_DOS
echo $SC_MAX_DOS

echo "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?>
<root xmlns=\"http://www.informatica.com/Parameterization/1.0\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema\" version=\"2.0\">
    <project name=\"b_DW_Monitoring_Project\">
        <folder name=\"MCE_Encounter_Scorecard_SQLs\">
            <mapping name=\"MCO_MBHP_DOS_Pull\">
                <parameter name=\"SC_BATCH_SEQ\">${lgrd_batch_seq}</parameter>
                <parameter name=\"SC_RUN_DATE\">${lgrd_run_date}</parameter>
                <parameter name=\"SC_MIN_DOS\">${SC_MIN_DOS}</parameter>				
                <parameter name=\"SC_MAX_DOS\">${SC_MAX_DOS}</parameter>
                <parameter name=\"SC_MON\">${SC_MON}</parameter>
                <parameter name=\"TABLE_MON\">b_DW_Monitoring_Project/MCE_Encounter_Scorecard_SQLs/RelationalDataObject:MCO_MBHP_DOS_SEP2018_DEC2018</parameter>
            </mapping>
        </folder>
    </project>
</root>" > $SC_PARAM_FILE

#        step_7
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
