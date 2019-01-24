#!/bin/bash
set -e
source /pd_build/buildconfig
set -x

header "Installing Docker..."

echo "+ Removing Docker old versions (if any)"
run apt-get remove docker docker-engine docker.io containerd runc

echo "+ Enabling Docker Official GPG Key"
run curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

echo "+ Verifying Docker fingerprint"
run apt-key fingerprint 0EBFCD88

echo "+ Adding Docker Offical Repo"
run add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

echo "+ Installing Docker engine"
minimal_apt_get_install docker-ce

echo "+ Add Docker to group"
run usermod -aG docker jenkins

run service docker start