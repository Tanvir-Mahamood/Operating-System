#!/bin/bash
#make a directory in base location. If the directory exists, skip this.

BASE_PATH="/mnt/e/3-2 code/OS Lab/Shell_Programming"
NEW_DIR="test_dir"

if [[ ! -d "$BASE_PATH/$NEW_DIR" ]]
then
	mkdir -p "$BASE_PATH/$NEW_DIR"
	echo "$NEW_DIR has been created at $BASE_PATH"
else
	echo "$NEW_DIR already exists at $BASE_PATH"
fi
