#!/bin/bash

# mychoice=2

# while [ $mychoice -le 10 ]; do
#     echo $mychoice
#     mychoice=$(( $mychoice +1))
#     sleep 0.5
# done


# while [ -f example.txt ]; do
#     echo "As of $(date), the test file exists."
#     sleep 5
# done

# echo "As of $(date), the file no longer exists. Exiting"


# for n in {1..10}; do
#     echo $n
#     sleep 1
# done

# echo "This is outside of the for loop."

# to compress log files

for file in logfiles/*.log; do
    tar -czvf $file.tar.gz $file
done