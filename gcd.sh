#!/usr/bin/bash

err_exit() {
    echo [ERROR] $1 1>&2
    exit 1
}

gcd() {
    if [ $2 -eq 0 ]; then
        echo $1
    else
        gcd $2 $(($1 % $2))
    fi
}

if [ $# -ne 2 ]; then
    err_exit "The number of arguments are invalid"
fi

if ! [[ "$1" =~ ^[0-9]+$ && "$2" =~ ^[0-9]+$ ]] || [[ $1 -eq 0 || $2 -eq 0 ]]; then
    err_exit "The arguments aren't natural integer"
fi

gcd $1 $2
