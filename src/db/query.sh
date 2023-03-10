#!/bin/bash

set -f # Disable wildcard expansion in bash

function db::query {
    shift 2
    local query_string="$@"
    local index=0
    echo '[' >/tmp/array_to_json.txt
    while read -r line; do
        id=$(echo $line | cut -d',' -f1)
        name=$(echo $line | cut -d',' -f2)
        logo=$(echo $line | cut -d',' -f3)
        if (($index > 0)); then
            echo "," >>/tmp/array_to_json.txt
        fi
        echo '{"id":"'$id'","name":"'$name'","logo":"'$logo'"}' >>/tmp/array_to_json.txt
        index=$((index + 1))
    done < <(mysql -h 127.0.0.1 -P3307 lms_rousseau_db -e "$query_string" | sed -e '/|/d' -e 's/\t/,/g')
    echo ']' >>/tmp/array_to_json.txt

    cat /tmp/array_to_json.txt
    rm /tmp/array_to_json.txt
}
