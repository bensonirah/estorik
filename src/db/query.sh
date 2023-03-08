#!/bin/bash

function db::query {
    shift 2
    local query_string=$*
    #mysql -u root -padmin -h 127.0.0.1 -P3307 mreception_db -e "${query_string}"
}
