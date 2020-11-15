#!/bin/bash

DIR_LIST_FILE=$(pwd)/dir-list.txt
HERE=`pwd`
while read dir; do
  echo "Make dir: $HERE/$dir"
  mkdir -p $HERE/$dir
done < $DIR_LIST_FILE
