#!/bin/bash

function jsonify {
    local index=0
    readarray input # Read the input from pip and store it in a variable
    echo '[' > /tmp/array_to_json.txt
    for line in ${input[@]}; do
        id=$(echo $line | cut -d',' -f1)
        name=$(echo $line | cut -d',' -f2)
        logo=$(echo $line | cut -d',' -f3)
        if (($index > 0)); then
            echo "," >>/tmp/array_to_json.txt
        fi
        echo '{"id":"'$id'","name":"'$name'","logo":"'$logo'"}' >>/tmp/array_to_json.txt
        index=$((index + 1))
    done
    echo ']' >> /tmp/array_to_json.txt
    cat /tmp/array_to_json.txt | jq '.'
    rm /tmp/array_to_json.txt
}
