#!/bin/bash

#verify user has entered exactly two arguements
if [ $# -ne 2]; then
     echo "Usage: backup.sh <source_directory> <target_directory>"
     echo "Please try again."
     exit 1
fi

#verify rsync installation check_exit_status
if ! command -v rsync > /dev/null 2>&1
then
    echo "This script requires rsync to be installed."
    echo "Please use the approporiate package manager to install rsync and try again."
    exit 2
fi

#current date and time in YYYY-MM-DD format
current_date=$(date +%Y-%m-%d)

rsync_options="-avb --backup-dir $2/$current_date --delete --dry-run"
$(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log
