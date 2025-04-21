#!/bin/bash
read -p "Enter id: " id
read -s -p "Enter password: " pass
echo "id=$id, next_d=$((id+1)), password=$pass"
