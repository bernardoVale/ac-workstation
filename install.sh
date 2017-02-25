#!/bin/bash
# Push the code from the private repo and executes bootstrap.sh
AC_REPO_URL="https://github.com/bernardoVale/ac-workstation.git"
AC_REPO_NAME="ac-workstation"

which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    /usr/bin/env ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Homebrew already installed!"
fi

check_python=`brew ls --versions python`
if [ -z "$check_python" ] ; then
    echo "Installing Python via Homebrew..."
    brew install python
else
    echo "Python Formula already installed via Homebrew!"
fi

check_git=`brew ls --versions git`
if [ -z "$check_git" ] ; then
    echo "Installing Git via Homebrew..."
    brew install git
else
    echo "Git Formula already installed via Homebrew!"
fi

which -s pip
if [[ $? != 0 ]] ; then
    echo "Pip is not installed. Python formula should has it enbedded. Trying to install via Homebrew..."
    brew install pip
fi

/usr/bin/env python -c "import ansible" 2> /dev/null
if [[ $? != 0 ]] ; then
    echo "Installing Ansible via pip..."
    pip install ansible
else
    echo "Ansible already installed!"
fi

git clone $AC_REPO_URL
bash $AC_REPO_NAME/bootstrap.sh