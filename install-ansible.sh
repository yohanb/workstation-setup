#!/bin/bash

# Force sudo
[ `whoami` = root ] || { sudo "$0" "$@"; exit $?; }

apt update -y
apt install software-properties-common -y
add-apt-repository --yes --update ppa:ansible/ansible
apt install ansible -y

echo "run ansible-galaxy install -r ./requirements.yml"

echo "run ansible-playbook ./playbook.yml -K"