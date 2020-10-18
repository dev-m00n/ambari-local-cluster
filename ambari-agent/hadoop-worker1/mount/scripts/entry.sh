#!/bin/bash

# Run sshd
/usr/sbin/sshd

# Open ssh access from ambari-server without password
AMBARI_VERSION=2.7.4.0
PUB_KEY=$(curl https://raw.githubusercontent.com/dev-m00n/ambari-local-server/server-$AMBARI_VERSION/id_rsa.pub)
echo $PUB_KEY >> ~/.ssh/authorized_keys

# Run agent
ambari-agent start

exec bash
