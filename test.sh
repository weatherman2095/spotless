#!/bin/bash

check_success() {
    printf '%s' "$1" | ./spotless 2>/dev/null
    if [ $? -eq 1 ]; then
        printf 'FAIL: %s\n' "$1"
    else
        printf '  OK: %s\n' "$1"
    fi
}


check_success 'true'
check_success 'false'
check_success 'null'
check_success '0'
check_success '1'
check_success '2'
check_success '3'
check_success '4'
check_success '5'
check_success '6'
check_success '7'
check_success '8'
check_success '9'
check_success '12'
check_success '123'
check_success '1234'
check_success '12345'
check_success '123456'
check_success '1234567'
check_success '-1'
check_success '-2'
check_success '-3'
check_success '-4'
check_success '-5'
check_success '-6'
check_success '-7'
check_success '-8'
check_success '-9'
check_success '-12'
check_success '-123'
check_success '-1234'
check_success '-12345'
check_success '-123456'
check_success '-1234567'
check_success '1.0'
check_success '1.01'
check_success '1.012345'
check_success '1.012345'
check_success '-1.0'
check_success '-1.01'
check_success '-1.012345'
check_success '-1.012345'
check_success '1e10'
check_success '1E10'
check_success '1e+10'
check_success '1E+10'
check_success '1e-10'
check_success '1E-10'
check_success '1.1234e10'
check_success '1.1234E10'
check_success '1.1234e+10'
check_success '1.1234E+10'
check_success '1.1234e-10'
check_success '1.1234E-10'