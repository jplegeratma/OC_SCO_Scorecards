#!/bin/bash

# Source PDM env
source ~/.pdm_profile

script_name="pdm_osdufr_etl.sh"
timestamp="$(date '+%Y%m%d%H%M%S')"

# common shell functions
. ../functions.sh

# Constants
#email_recepient="EHS-DL-DWDeveloper@MassMail.State.MA.US,EHS-DL-PDMITTeam@MassMail.State.MA.US"
email_recepient="jeff.robertson@massmail.state.ma.us"

# source the application constants
if [ -x $PDMBINHOME/application.sh ]
then
    . $PDMBINHOME/application.sh
else
    echo "Error: ($script_name) cannot execute \$PDMBINHOME/application.sh (file not found or not executable)" 1>&2
    exit 1
fi

#------------------------------------------------------------------------------
# OSD ETL Extract
#------------------------------------------------------------------------------
_osd_etl () 
{
   echo "Running pdm_osdufr_etl.sh..."

   pushd $PDMBINHOME/osdufr/bin >/dev/null
   mv pdm_osdufr_etl.sh*.log logs
   $PDMBINHOME/run_jobs.sh -s pdm_osdufr_etl.sh > pdm_osdufr_etl.sh.$timestamp.log 2>&1
   if [ $? -gt 0 ]; then
      send_email "${email_recepient}" "Error in ($script_name)" "step 0, _osd_etl failed"
      error_msg_ex  " step 0, executing _osd_etl"
   else
      echo "pdm_osdufr_etl.sh successfully finished"
   fi
   popd  >/dev/null
}

#------------------------------------------------------------------------------
# Main Script
#------------------------------------------------------------------------------
_osd_etl

