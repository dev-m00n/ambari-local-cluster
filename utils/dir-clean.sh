#!/bin/bash

PWD=$(pwd)
DIR_LIST_FILE=./dir-list.txt

while read file; do
  rm -rf "$PWD/$file"
done < $DIR_LIST_FILE
