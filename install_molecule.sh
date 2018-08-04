#!/usr/bin/env bash

# Install the docker dependencies
echo "[Install Molecule] Install Dependencies"
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

# Install Molecule Dependencies
echo '[Install Molecule] Set up the GPG key for Docker'
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Install Molecule
echo "[Install Molecule] Go to Home folder"
cd ~
echo '[Install Molecule] Add the repository to Install Docker'
sudo add-apt-repository  "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo '[Install Molecule] Update Cache and install Docker'
sudo apt-get update
sudo apt-get install docker-ce -y

echo '[Install Molecule] Install Pip'
sudo apt-get install -y python-pip

echo '[Install Molecule] Install ansible'
sudo pip install ansible

echo '[Install Molecule] Export ANSIBLE_HOST path'
export ANSIBLE_HOSTS=/etc/ansible/hosts

echo '[Install Molecule] Install docker-py'
sudo pip install docker-py

echo '[Install Molecule] Install testinfra'
sudo pip install testinfra

echo '[Install Molecule] Install Molceule'
sudo pip install molecule

echo '[Install Molecule] Done!'
