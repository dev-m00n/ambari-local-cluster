#!/bin/bash
USER_NAME=`whoami`
HOST_UID=$(id -u $USER_NAME)
HOST_GID=$(id -g $USER_NAME)

echo "Container will be executed with user: $HOST_UID, name: $USER_NAME, group: $HOST_GID"

AMBARI_USER_NAME=$USER_NAME AMBARI_UID=$HOST_UID POSTGRES_UID=$HOST_UID POSTGRES_GID=$HOST_GID docker-compose up -d --build --remove-orphans
