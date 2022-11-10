#!/bin/bash
#  ____                  _
# |  _ \  ___  _ __ ___ (_)_ __   ___
# | | | |/ _ \| '_ ` _ \| | '_ \ / _ \
# | |_| | (_) | | | | | | | | | | (_) |
# |____/ \___/|_| |_| |_|_|_| |_|\___/
# ____________________________________________________________________________
# Sponsor              : Domino
# Program              : publish.sh
# ____________________________________________________________________________
# DESCRIPTION 
# Shell script used to publish macro library into a Domino project.
# This is done by file-copying the SAS macro files from the Git-folder
# into the Artifacts folder in the Domino project.
#
# Doing this means that the Domino project can Export the SAS macros to
# other Domino project using the Project > Settings > Exports option
# 'Files' checked.
# ____________________________________________________________________________
# PROGRAM HISTORY                                                         
# ----------------------------------------------------------------------------
#  20221110  |  smalcolm        | created         
# ****************************************************************************

# make sure the destination exists
mkdir -p $DOMINO_ARTIFACTS_DIR/macros
# copy all the macros
cp -rf $DOMINO_WORKING_DIR/macros/*.sas $DOMINO_ARTIFACTS_DIR/macros
