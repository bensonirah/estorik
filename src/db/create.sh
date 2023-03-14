#!/bin/bash

function db::create {
    shift 2
    local dbname=$1
    mysql -h 127.0.0.1 -P3307 -e "CREATE DATABASE IF NOT EXISTS $dbname;"
    echo "Db: $dbname created successfull"
}