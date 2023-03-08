#!/bin/bash

function cmd::ls {
    #echo "Run cmd::ls command"
    #echo "The project root dir is ${project_root}"
    find src/Command -type f | fzf
}