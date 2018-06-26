#!/bin/bash

# All commands need to start in this function, do not delete it, always use this function as the begin of your script
function init_before_start(){
  nuvm portfwd create -H $hostname -n web_interface -l 5000 -v 5000
}
