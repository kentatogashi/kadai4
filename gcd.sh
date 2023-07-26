#!/bin/bash

# Define a function to calculate the GCD
gcd() {
    if [ $2 -eq 0 ]; then
        echo $1
    else
        gcd $2 $(($1 % $2))
    fi
}

gcd $1 $2
