#!/bin/bash
set -e
source /pd_build/buildconfig

run /pd_build/enable_repos.sh
run /pd_build/prepare.sh
run /pd_build/utilities.sh

if [[ "$ruby23" = 1 ]]; then run /pd_build/ruby-2.3.8.sh; fi
if [[ "$ruby24" = 1 ]]; then run /pd_build/ruby-2.4.5.sh; fi
if [[ "$ruby25" = 1 ]]; then run /pd_build/ruby-2.5.3.sh; fi
if [[ "$ruby26" = 1 ]]; then run /pd_build/ruby-2.6.0.sh; fi
if [[ "$jruby92" = 1 ]]; then run /pd_build/jruby-9.2.0.0.sh; fi
if [[ "$python" = 1 ]]; then run /pd_build/python.sh; fi
if [[ "$nodejs" = 1 ]]; then run /pd_build/nodejs.sh; fi
if [[ "$git" = 1 ]]; then run /pd_build/git.sh; fi
if [[ "$docker" = 1 ]]; then run /pd_build/docker.sh; fi
if [[ "$go" = 1 ]]; then run /pd_build/go.sh; fi

run /pd_build/finalize.sh
