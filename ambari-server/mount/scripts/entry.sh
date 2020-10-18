#!/bin/bash
/usr/sbin/sshd

ambari-server start

# TODO: Get all worker programatically and scan all without hardcode
ssh-keyscan -t rsa hadoop.worker1.local >> ~/.ssh/known_hosts


exec bash
