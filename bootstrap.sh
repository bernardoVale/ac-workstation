#!/bin/bash
AC_PRIVATE_REPO_NAME="ac-workstation"

echo "Running Local Setup using Ansible"
ansible-playbook local_setup.yml

echo "
>>> WSI Workstation Home <<<"

read -p "Inform a directory to to clone wsi_workstation project
> " WSI_WORKSTATION_PATH < /dev/tty

git clone https://gitlab.com/ac-wsgc/wsi_workstation.git $WSI_WORKSTATION_PATH

echo "
>>> Run WSI Workstation Automation <<<"
cd $WSI_WORKSTATION_PATH
bash install.sh