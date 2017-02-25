#!/bin/bash
AC_PRIVATE_REPO_NAME="ac-workstation"

cd $AC_PRIVATE_REPO_NAME

echo "Running Local Setup using Ansible"
ansible-playbook local_setup.yml