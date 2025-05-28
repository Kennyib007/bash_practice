#!/bin/bash

#simple functions

greet() {
    echo "Hello $1"
}

# greet "Kenny","Taiwo"


add () {
    echo $(($1 + $2))
}

sum=$(add 3 7)

echo "sum of 3 and 7 is: $sum"