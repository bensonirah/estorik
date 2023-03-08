#!/bin/bash

function services::functions {
    shift 2
    local service_path=$1
    grep -rn 'public function' $service_path | tail -n +2 | column -t -s':' | fzf
}