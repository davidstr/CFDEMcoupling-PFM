#!/bin/bash

#===================================================================#
# compile routine for CFDEMcoupling + LIGGGHTS, part of CFDEMproject 
# Christoph Goniva - May. 2012, DCS Computing GmbH
#===================================================================#

#- include functions
source $CFDEM_SRC_DIR/etc/functions.sh

NOW="$(date +"%Y-%m-%d-%H:%M")"
logDir="log"


cd $CFDEM_SRC_DIR/etc
mkdir -p $logDir

#================================================================================#
# compile LIGGGHTS
#================================================================================#
bash $CFDEM_SRC_DIR/etc/compileLIGGGHTS.sh

#================================================================================#
# compile CFDEMcoupling
#================================================================================#
bash $CFDEM_SRC_DIR/etc/compileCFDEMcoupling.sh
