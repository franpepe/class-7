#!/bin/bash

echo "=== CLEANING FILES ==="
echo "Loading for files to organize"
echo ""

file_count=0
skip_count=0

#Check all files in Break and Continue
for file in /home/dunique/bash_script_class/break_continue/*
do
	#skip directories
	if [[ -d "$file" ]]; then
		echo "Skipping folder $(basename "$file")"
		((skip_count++))
		continue #Jump to next file immediately
	fi

	#Skip system/hidden files - files that start with .
	if [[ "$(basename "$file")" == .* ]]; then
		echo "Skipping hidden file $(basename "$file")"
		((skip_count++))
		continue #Jump to the next file immediately
	fi

	#Skip files already in correct format
	if [[ "${file}" == *.organized ]]; then
		echo "Already organized: $(basename "${file}")"
		((skip_count++))
		continue
	fi

	#Process normal files
	echo "Organizing: $(basename "${file}")"
	mv "${file}" "${file} organized"
	((file_count++))
done
echo ""
echo "Summary "
echo " - organized: ${file_count} files"
echo " - Skipped: ${skip_count} items"		.
