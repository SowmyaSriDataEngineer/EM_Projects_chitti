#!/bin/bash

# List directories in a specific path
dirs=$(ls -d ./instances/schemachange/scripts/versioned/*/ | xargs -n 1 basename)

# Output the directories to a file
echo "$dirs" > directories.txt
