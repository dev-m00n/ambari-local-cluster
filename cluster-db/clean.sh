#!/bin/bash
#rm -rf mount/pg_data/*

THIS_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "Removing all cluster db data($THIS_PATH/mount/pg_data/)"
rm -rf $THIS_PATH/mount/pg_data/*
echo "Removing all cluster db data was done"
