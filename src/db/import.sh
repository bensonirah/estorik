#!/bin/bash


function db::import {
    shift 2
    local dbname_dest=$1
    local dbname_source="$2"
    mysql -h 127.0.0.1 -P3307 $dbname_dest < $dbname_source
    echo "Database imported successfull!"
}