#!/bin/bash

# if [ -z $1 ]; then
#     echo "Enter the required arguement"
#     exit 1
    
# fi

# echo "You entered the arguements: $1, $2, $3"

lines=$(ls -lh $1 | wc -l)

if [ $# -ne 1 ]; then
    echo "The  script requires exactly one directory path passed."
    echo "Please try again."
    exit 1
fi

echo "You have $(($lines-1)) object in the $1 directory."