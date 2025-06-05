#!/bin/bash

mynum=300

if [ $mynum -eq 300 ]
then
    echo "The number matches"
fi

if [ $mynum -ne 200 ]
then
    echo "The condition is true"
else  
    echo "The variable"
fi

if [ -f example.txt ]; then
    echo "The file exists"
fi



package=htop

# if command -v $package
# then
#     echo "$package is available, let's run it"
# else
#     echo "$package is NOT available, installing it .."
#     Sudo yum update && sudo yum install -y $package
# fi

# $package