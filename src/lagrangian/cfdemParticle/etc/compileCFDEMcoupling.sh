#!/bin/bash

#===================================================================#
# compile routine for CFDEMcoupling, part of CFDEMproject 
# Christoph Goniva - May. 2012, DCS Computing GmbH
#===================================================================#

#- include functions
source $CFDEM_SRC_DIR/etc/functions.sh

NOW="$(date +"%Y-%m-%d-%H:%M")"
logDir="log"


cd $CFDEM_SRC_DIR/etc
mkdir -p $logDir

#================================================================================#
# compile src
#================================================================================#
bash $CFDEM_SRC_DIR/etc/compileCFDEMcoupling_src.sh

#================================================================================#
# compile solvers
#================================================================================#
bash $CFDEM_SRC_DIR/etc/compileCFDEMcoupling_sol.sh

#================================================================================#
# compile utilities
#================================================================================#
bash $CFDEM_SRC_DIR/etc/compileCFDEMcoupling_uti.sh
