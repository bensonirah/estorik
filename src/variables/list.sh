#!/bin/bash

function variables::list {
    grep -orn '\$\w\+' src | awk -F':' '{print $3}' | sort | uniq -c | sed 's/^[[:space:]]\+//g' | column -t
}