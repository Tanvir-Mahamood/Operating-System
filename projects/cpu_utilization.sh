#!/bin/bash
#Real time CPU utilization monitoring

BASE_PATH="/mnt/e/3-2 code/OS Lab/projects"
NEW_DIR="cpu_usages"

if [[ ! -d "$BASE_PATH/$NEW_DIR" ]]
then
	mkdir -p "$BASE_PATH/$NEW_DIR"
fi



