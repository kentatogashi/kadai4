#!/usr/bin/bash

err_exit() {
    echo "[NG] : \"$1\" at line $2" 
    exit 1
}

test_args_case() {
    test_case="$1"
    arg1="$2"
    arg2="$3"
    arg3="$4"
    ./gcd.sh $test_case $arg1 $arg2 $arg3 2> /dev/null && err_exit "$test_case" ${BASH_LINENO[0]}; 
    echo "[OK] : \"$1\" at line ${BASH_LINENO[0]} , exit code is $?"
}

test_true_case() {
    test_case="$1"
    arg1="$2"
    arg2="$3"
    ans="$4"
    [ $(./gcd.sh $arg1 $arg2) -eq $ans ] || err_exit "$test_case" ${BASH_LINENO[0]}
    echo "[OK] : \"$1\" at line ${BASH_LINENO[0]} , exit code is $?"
}

echo Check arguments
test_args_case "arg number is zero" 
test_args_case "arg number is one" 1 
test_args_case "arg number is three" 1 2 3
test_args_case "arg is negative integer" -1 -2
test_args_case "arg is zero" 0 -2
test_args_case "arg is decimal" 0.1 0.2

echo GCD functionality 
test_true_case "args: 1 2 expected: 1" 1 2 1
test_true_case "args: 12 18 expected: 6" 12 18 6
test_true_case "args: 100 100 expected: 100" 100 100 100

echo "All passed."
