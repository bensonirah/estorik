#!/bin/bash


function debug::dump {
    grep -rn 'dump' src | sed -e 's/[[:space:]]\{2,\}//g' -e 's/::/#/g' | column -s':' -t | sed 's/#/::/g'
}