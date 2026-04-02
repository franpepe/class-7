#!/bin/bash

which git > /dev/null 2>&1

if [[ $? -eq 0 ]]; then
	echo "git is installed"
else
	echo "git is not installed"
fi

