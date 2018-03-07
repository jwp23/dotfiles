#!/bin/bash

# Adds to profile specific to Omniex
alias build_ems='docker-compose exec omniex ./build.sh -j 2'
alias build_clean='sudo rm -rf debug_build'
alias build_clean_cmake='find . -name "*.cmake" -exec rm {} \;'
alias ems='~/workspace/omniex/ems'
alias e='ems'
alias rebuild_ems='build_clean;build_ems'

export EMS_SRC="$HOME/workspace/omniex/ems"
export LBM_LICENSE_FILENAME="${EMS_SRC}/29west.lic"
export LBM_DEFAULT_CONFIG_FILE="$EMS_SRC}/etc/lbtrm.cfg"
export LD_LIBRARY_PATH=/opt/googletest-1.8.0/lib:/opt/rh/devtoolset-7/root:${LD_LIBRARY_PATH}

