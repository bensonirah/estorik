#!/bin/bash

function controller::search {
    if [ $# -ge 3 ];then
        shift 2
        command grep -rn $1 src/Controller
    else
        echo "Provide the pattern to search"
        exit 1
    fi
}