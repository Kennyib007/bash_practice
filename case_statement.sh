#!/bin/bash

finished=0

while [ $finished -ne 1 ]; do
    
    echo "What is your favorite food"
    echo "1 - Amala"
    echo "2 - Jollof"
    echo "3 - Beans"
    echo "4 - Garri"
    echo "5 - Yam"
    echo "6 - Exit the script"

    read fav_food;

    case $fav_food in
        1) echo "Amala served with ewedu is enroute.";;
        2) echo "Jollof served with turkey is enroute.";;
        3) echo "Beans and Bread too sure.";;
        4) echo "Garri again.";;
        5) echo "Yam season here we go.";;
        6) finished=1;;
        *) echo "Wrong choice, meal unavailable."
    esac
done

echo "Thanks for using this case statement script."