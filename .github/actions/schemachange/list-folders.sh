#!/bin/bash

DIR_TYPE=$1
BASE_DIR="./instances/schemachange/scripts/$DIR_TYPE"

if [ ! -d "$BASE_DIR" ]; then
  echo "Directory type '$DIR_TYPE' does not exist."
  exit 1
fi

find "$BASE_DIR" -maxdepth 1 -mindepth 1 -type d -exec basename {} \;
