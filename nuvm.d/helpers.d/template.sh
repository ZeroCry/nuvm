#!/bin/bash

files="$(find $vm_path/files -type f)"

function replace(){
  for file in $files;do
    file=$(basename $file)
    if [[ $file =~ b64 ]];then
      export $file="$(base64 $vm_path/files/$file | tr -d '\n')"
    else
      export $file="$(cat $vm_path/files/$file)"
    fi
  done
  envsubst < $user_data > /tmp/user-data
  mv /tmp/user-data $user_data 
}

function clean(){
  for file in $files;do
    unset $(basename $file)
  done
}
