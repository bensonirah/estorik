#!/bin/bash


function forms::list {
    find src/Form/Type -type f -iname '*.php'
}