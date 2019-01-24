#!/bin/bash
set -e
source /pd_build/buildconfig
set -x

header "Installing Git..."
run apt-get install git-core

run git --version
