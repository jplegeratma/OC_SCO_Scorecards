#!/bin/bash

script_name="multi_DQ_SCORECARD_SCO.sh"

# common shell functions
. ../functions.sh


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

batch_step=1

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
    *     ) echo "Error: (DQ_SCORECARD_SCO.sh) Unknown switch $Option"
            echo "$USAGE"
            exit 1;;
  esac
done
shift $(($OPTIND - 1))

# = = = = = = = = = = = =  V A R I A B L E S .

# = = = = = = = = = = = =  F U N C T I O N S  .


step_1 ()
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Name:    set_SO_RUN_DATE_TO_MAX_OFFSET_MNTHS (db_connect_string)
# Notes:   Taken from function get_run_date
# This may be written as a function 
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#set_SO_RUN_DATE_TO_MAX_OFFSET_MNTHS ()
{
        # Local variables
        local lgrd_db_connect_str="${DW_USER}/${DW_PASS}@${DW_SID}"

echo "SO_RUN_DATE_TO_MAX_OFFSET_MNTHS: ${SO_RUN_DATE_TO_MAX_OFFSET_MNTHS}"

    if [ -n "$SO_RUN_DATE_TO_MAX_OFFSET_MNTHS" ]
    then
        # Overwrite the value in the nw_params table
        local query="update INF_B_DQ_PARAMS set PARAM_VALUE = '${SO_RUN_DATE_TO_MAX_OFFSET_MNTHS}' where PARAM_NAME = 'SO_RUN_DATE_TO_MAX_OFFSET_MNTHS'";

        local lora_error=`process_sql "${lgrd_db_connect_str}" "${query}"`
                                                                                                                                         # Check for any sql errors
        local ora_error=`echo $lora_error | egrep '((ORA\-[0-9]+)|(PLS\-[0-9]+)|(SP2-[0-9]+)).*'`
        if [ -n "${ora_error}" ]
        then
                 echo "${ora_error}"
        fi  
    fi                                                                                                                      

        step_2

}

step_2 ()
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Name:    set_SO_RUN_MNTHS (db_connect_string)
# Notes:   Taken from function get_run_date
# This may be written as a function
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#set_SO_RUN_MNTHS ()
{

        # Local variables
        local lgrd_db_connect_str="${DW_USER}/${DW_PASS}@${DW_SID}"

echo "SO_RUN_MNTHS: ${SO_RUN_MNTHS}"

        # Get the run date from dw_params table
        local query="update INF_B_DQ_PARAMS set PARAM_VALUE = '${SO_RUN_MNTHS}' where PARAM_NAME = 'SO_RUN_MNTHS'";

        echo ${query}

        local lora_error=`process_sql "${lgrd_db_connect_str}" "${query}"`

        # Check for any sql errors
        local ora_error=`echo $lora_error | egrep '((ORA\-[0-9]+)|(PLS\-[0-9]+)|(SP2-[0-9]+)).*'`
        if [ -n "${ora_error}" ]
        then
                 echo "${ora_error}"
        fi

        step_51
}

step_51 ()
{

    pushd ../../sql/dbupdate > /dev/null

    #~~~~~~~~ End the Batch  
    echo "Info: ($script_name) Ending the Batch"
    run_sql_fg upd_so_batch_end.sql
    if [ $? -gt 0 ]
        then
                echo "multi SO End Batch failed at: `date` "
                send_email "${email_recepient}" "DEV - Error in ($script_name)" "DEV - Error in ($script_name). Step 1 failed -
 multi SO End Batch failed. Script Halted."
                exit 1
        fi

        echo "Info: ($script_name) SO End Batch completed at: `date` "
        popd > /dev/null
}


# = = = = = = = = = = = =  M A I N

case "$batch_step" in
    "1" )      step_1 ;;
    "11" )      step_11 ;;
    "12" )      step_12 ;;
    "13" )      step_13 ;;
    "14" )      step_14 ;;
    "15" )      step_15 ;;
    "16" )      step_16 ;;
    "17" )      step_17 ;;
    "18" )      step_18 ;;
    "19" )      step_19 ;;
    "20" )      step_20 ;;
    "21" )      step_21 ;;
    "22" )      step_22 ;;
    "23" )      step_23 ;;
    "51" )      step_51 ;;
     *  ) echo "$USAGE";;
esac  # jump to a particular point in script


echo "multi_SCO_DQ SCORECARD Informatica Job completed successfully."
send_email "${email_recepient}" "($script_name) is done" "multi_SCO_DQ SCORECARD Informatica Job completed successfully."
echo "Info: ($script_name) multi SCO_DQ SCORECARD Monthly Load -- Completed at: `date` "
echo "Info: ($script_name) Check out the log file:  $LOG_FILE "
