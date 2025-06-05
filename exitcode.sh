#!/bin/bash

directory=/etc

if [ d $directory ]; then
    echo "The directory $directory exists."
    exit 0
else
    echo "the directory $directory does not exist."
    exit 1
fi

# won't print cause the code already exits
echo "The exit code for this script run is $?"
