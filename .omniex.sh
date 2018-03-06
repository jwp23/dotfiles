#!/bin/bash

# Adds to profile specific to Omniex
alias build_ems='docker-compose exec omniex ./build.sh -j 2'
alias build_clean='sudo rm -rf debug_build'
alias build_clean_cmake='find . -name "*.cmake" -exec rm {} \;'
alias ems='~/workspace/omniex/ems'
alias rebuild_ems='build_clean;build_ems'
