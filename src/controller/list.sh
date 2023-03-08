#!/bin/bash

function controller::ls {
  command find src/Controller -type f -iname '*.php'
}