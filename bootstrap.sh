#!/bin/bash
if [ ! -z "$1" ]
  then
    cd $1
fi

echo "Running Local Setup using Ansible"
ansible-playbook local_setup.yml

echo "
>>> WSI Workstation Home <<<"

read -p "Inform a directory to clone wsi_workstation project
> " WSI_WORKSTATION_PATH < /dev/tty

git clone https://gitlab.com/ac-wsgc/wsi_workstation.git $WSI_WORKSTATION_PATH

echo "
>>> Run WSI Workstation Automation <<<"
# WSI_WORKSTATION_PATH="/Users/bvale/projects/wsgc-docker"
bash $WSI_WORKSTATION_PATH/install.sh $WSI_WORKSTATION_PATH