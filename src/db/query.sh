#!/bin/bash

#set -f # Disable wildcard expansion in bash

function db::query {
    shift 2
    local query_string="$@"
    local current_db=$(command estorik db current)
    #mysql -h 127.0.0.1 -P3307 $current_db -e "$query_string" | sed -e '/|/d'  -e 's/\t/,/g' | jsonify
    mysql -h 127.0.0.1 -P3307 $current_db -e "$query_string"
}
