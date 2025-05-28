#!/bin/bash

# Parameters
name=$1
job=$2

#echo "Enter your job"
#read job

# Variables
nickname="Blvck"
user=$(whoami)
directory=$(pwd)
date=$(date)

# Array
g=("kenny" "taiwo" "malik" "samad")

# if statement
# if [ something compares something];
# then 
#     something
# else
#     something else
# fi

if [ -z "$2" ]; then
    echo "enter a job"
    exit 1
fi

# echo
echo "Hi this is $name practing to be a proficient $job"

echo "I am logged in as $user in $directory today $date"

echo "${g[1]}" is the selected winner