#!/bin/bash
location=C:/temp
read -p "Enter your ip: " ip
echo path is $location and server ip is $ip
if [ ! -d "C:/temp"]; then
    mkdir $location
fi
ssh-keygen -b 2048 -t rsa -f $location/sshkey -q -N "" 
type $location/sshkey.pub | ssh root@$ip 'cat >> .ssh/authorized_keys && cat .ssh/authorized_keys'
