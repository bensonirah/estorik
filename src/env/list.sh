#!/bin/bash


function env::ls {
    find . -type f -iname '.env*' | sed 's/^.\///g' | sort
}
