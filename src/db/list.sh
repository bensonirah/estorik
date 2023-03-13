#!/bin/bash

function db::list {
    mysql -h 127.0.0.1 -P3307 -e "show databases;"
}