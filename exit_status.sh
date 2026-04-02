#!/bin/bash

# $? contains exit status of the last command (0=successful, >0=error)

#Successful Command

ls /temp > /dev/null 2>&1

if [[ $? -eq 0 ]]; then
       echo "Ls ccommand succeeded"
else
	echo "This command failed"
fi
