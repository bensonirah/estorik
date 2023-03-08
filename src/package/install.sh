#!/bin/bash

function pkg::install {
    shift 2
    local pkg_to_install=$1
    echo "Install package : ${pkg_to_install}"
}