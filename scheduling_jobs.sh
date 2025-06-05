#!/bin/bash

#run which at to verify at command is installed on the server
# at command enables us run command at a particular time
# at time <11:32> -f ./<csriptname>    command to run at 

logfile=job_results.log

/usr/bin/echo "The script ran at the following time: $(/usr/bin/date)" > $logfile

#cronjob
#edit crontab crontab -e