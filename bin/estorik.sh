#!/bin/bash
set -e

base_cmd=$1
sub_cmd=$2


function errorHandler {
    echo "An error occured!"
}

# Check if a project is a estorik project
if [ ! -e $(pwd)/estorik.yaml ] && [ ! -e $(pwd)/composer.json ];then
    echo "This is not a estorik project!"
    exit 1;
fi

project_root=$(pwd)
# Source all sub commands
for handler in $(find $ESTORIK_HOME/src/ -type f -iname "*.sh");do
   . $handler;
done


# Invoke command
$base_cmd::$sub_cmd $@

trap errorHandler ERR