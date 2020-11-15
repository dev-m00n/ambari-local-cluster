#!/bin/bash

THIS_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "Ambari agent data will be deleted under $THIS_PATH"

NOT_BE_DELETED=("scripts")
EXCLUDES=()
for dir in ${NOT_BE_DELETED[@]}; do
  EXCLUDES+=(-I $dir)
done 

IFS=$'\n'

for dir in `find $THIS_PATH -mindepth 1 -maxdepth 1 -type d`; do
  for mounted_dir in `ls ${EXCLUDES[@]} $dir/mount/`; do
    CLEAN_PATH="$dir/mount/$mounted_dir"
    echo "Removing $CLEAN_PATH is in progress"    
    rm -rf $CLEAN_PATH
    echo "Removing $CLEAN_PATH was done"
  done
done
