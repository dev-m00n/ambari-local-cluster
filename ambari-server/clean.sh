#!/bin/bash

THIS_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "Ambari server data will be deleted under $THIS_PATH"

NOT_BE_DELETED=("etc" "scripts")
EXCLUDES=()
for dir in ${NOT_BE_DELETED[@]}; do
  EXCLUDES+=(-I $dir)
done 

IFS=$'\n'

for mounted_dir in `ls ${EXCLUDES[@]} $THIS_PATH/mount/`; do
  CLEAN_PATH="$THIS_PATH/mount/$mounted_dir"
  echo "Removing $CLEAN_PATH is in progress"
  rm -rf $CLEAN_PATH
  echo "Removing $CLEAN_PATH was done"
done

echo "Removing Ambari server data was done"
