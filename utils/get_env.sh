#!/bin/bash

function get_env {
    local key=$(echo $1 | tr '[[:lower:]]' '[[:upper:]]')
    cat $ESTORIK_HOME/.env | grep $key | cut -d'=' -f2
}