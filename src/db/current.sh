#!/bin/bash

function db::current {
    cat $ESTORIK_HOME/.env | grep ESTORIK_DB | cut -d'=' -f2
}