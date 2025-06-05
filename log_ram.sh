#!/bin/bash

log_dir="/var/log/ram-usage"
log_file="$log_dir/ram-$(date +%F).log"
email="your_email@example.com"
current_hour=$(date +%H)

# create directory
mkdir -p "$log_dir"

# collect hourly log
echo "[$(date '+%F %T')] Memory Usage:" >> "$log_file"
free -h >> "$log_file"


# confirm midnight and mail log
if [ "$current_hour" -eq 00 ]; then
    # Send log file via email
    mail -s "Daily RAM Report - $(date +%F --date='yesterday')" "$email" < "$log_file"

    # Remove or archive the log to start fresh
    rm -f "$log_file"
fi

# Additional requirement, set up cronjob to run the script every hour or systemd timer
# crontab -e
# 0 * * * * /path/to/log_ram.sh
