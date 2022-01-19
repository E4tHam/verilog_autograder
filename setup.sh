#!/usr/bin/env bash

# Print Linux Version
lsb_release -a

# Update package list
apt-get update

# Install python and requirements
apt-get install -y python3 python3-pip python3-dev
pip3 install -r /autograder/source/requirements.txt

# Install icarus
apt-get install -y iverilog
iverilog -v

# Move desired files and directories to /autograder/
FILES=( "generate-results" "solutions" "testbenches" "and_gate.core" "or_gate.core" "Makefile" )
for file in ${FILES[@]}; do
    mv /autograder/source/$file /autograder/;
done
