#!/bin/bash

function db::jsonify {
    row_object="65,Lamborghini,Lamborghini-Logo-svg-6220fd79aad32.png"
    echo '{"id":'$(echo $row_object | cut -d',' -f1)', "name":"'$(echo $row_object | cut -d',' -f2)'", "logo":"'$(echo $row_object | cut -d',' -f3)'"}'
}
