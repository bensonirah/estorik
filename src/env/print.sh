#!/bin/bash

function env::print {
    if [ $# -le 2 ];then
        echo "Invalid command"
        echo "Show help command"
        exit 1
    else
        shift 2
        local env_file=$1
        cat $env_file | grep -v '^#' | sed '/^$/d' | column -s'=' -t
    fi
}