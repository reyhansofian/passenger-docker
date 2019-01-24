#!/bin/bash
set -e
source /pd_build/buildconfig
set -x

echo "+ Installing Go"
run curl -O https://storage.googleapis.com/golang/go1.11.2.linux-amd64.tar.gz

run tar -xvf go1.11.2.linux-amd64.tar.gz
run mv go /usr/local
