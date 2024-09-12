#!/bin/bash

echo "Executing ansible playbook:"
echo " - Environment: " $1
echo " - Host: " $2
echo " - Role: " $3

ansible-playbook -i inventory/$1/inventory site.yml -e "host_var=$2 role_var=$3"


