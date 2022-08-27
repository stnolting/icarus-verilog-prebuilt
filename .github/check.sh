#!/bin/bash

set -e

echo ""

RELEASE=v1.0.0
ARCHIVE=iverilog-27082022
echo "Checking release $RELEASE, archive $ARCHIVE..."
wget https://github.com/stnolting/icarus-verilog-prebuilt/releases/download/$RELEASE/$ARCHIVE.tar.gz
ls -al
mkdir $GITHUB_WORKSPACE/$ARCHIVE.tmp
tar -xzf $ARCHIVE.tar.gz -C $GITHUB_WORKSPACE/$ARCHIVE.tmp/
$GITHUB_WORKSPACE/$ARCHIVE.tmp/bin/iverilog -V
