#!/bin/bash

THIS_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
DIRS=(
  "ambari-agent" 
  "ambari-server" 
  "cluster-db"
)

echo "Running clean-all script. All data will be removed"

for dir in ${DIRS[@]}; do
  if [ -f $THIS_PATH/$dir/clean.sh ]; then
    CLEAN_PATH="$THIS_PATH/$dir/"
    echo "Running clean.sh in $CLEAN_PATH"
    $CLEAN_PATH/clean.sh
    echo "clean.sh in $CLEAN_PATH was done"
  fi
done

echo "Clean-all script was done"
