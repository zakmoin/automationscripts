#!/usr/bin/env bash

# Usage Example:
# ./install_ansible.sh 'v1.1' path/to/local/ansible/hosts/file
# Look up https://github.com/ansible/ansible for version tags to use

gitusername=$1
gituseremail=$2

# Install Git
# The most stable way of getting the latest version of ansible to get it directly from the git repo
echo "[Install Git] Install Git"
sudo apt-get install -y git-core

# Configure Git user details
echo '[Install Git] Configure Git'
git config --global user.email $gituseremail
git config --global user.name $gitusername

echo '[Install Git] Done! with the following configuration'
git config -l

