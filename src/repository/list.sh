#!/bin/bash

function repo::ls {
    find src/Repository -type f -iname '*Repository.php' | fzf
}
