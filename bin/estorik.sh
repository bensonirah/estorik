#!/bin/bash
set -e

function showHelp {
    figlet "estorik"
    echo "Usage:  estorik [OPTIONS] COMMAND"
}

function errorHandler {
    echo "An error occured!"
}

if [ $# -lt 2 ];then
    showHelp
else

base_cmd=$1
sub_cmd=$2


# Check if a project is a estorik project
if [ ! -e $(pwd)/estorik.yaml ] && [ ! -e $(pwd)/composer.json ];then
    showHelp
    echo "This is not a estorik project!"
    exit 1;
fi

project_root=$(pwd)

# Source all utils function
for utils in $(find $ESTORIK_HOME/utils/ -type f -iname "*.sh");do
    . $utils
done

# Source all sub commands
for handler in $(find $ESTORIK_HOME/src/ -type f -iname "*.sh");do
   . $handler;
done

# Invoke command
$base_cmd::$sub_cmd $@

trap errorHandler ERR

fi
