#!/bin/bash
file="deep.txt"
dir="filling"


# -a/-e: file exists
if [[ -e "$file" ]]; then 
	echo "$file exists" 
fi
#-f: checks if a regular file and not a directory/simlink
if [[ -f "$file" ]]; then
	echo "$file is a regular file"
fi

#-d: Directory
if [[ -d "$file" ]]; then
	echo "$file is a directory"
else
	echo "$file is not a directory"
fi

#-s: file exists AND is not empty
if [[ -s "$file" ]]; then
	echo "$file exist and has content"
else
	"something is wrong with $file"
fi

#-h/-L: Symbolic link
if [[ -h link_to_deep ]]; then
	echo "link_to_deep is a syn link"
fi
