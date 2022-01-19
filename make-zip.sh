#!/usr/bin/env bash

# Output
ZIP=autograder.zip

# Remove existing output
rm -rf ${ZIP}

# Clean solution
make clean

# Generate output
zip ${ZIP} -r .
