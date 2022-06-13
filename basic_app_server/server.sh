#!/bin/bash
echo "Hello world" > index.html
echo " The current evironment is: ${environment}" >> index.html
echo "/n  My port is ${server_port}" >> index.html
nohup busybox httpd -f -p "${server_port}" &