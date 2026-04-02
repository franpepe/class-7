#!/bin/bash

file="data.txt"

#create dat.txt
echo "This was an interesting class" > ${file}

# && : AND (both must be true)

if [[ -f "${file}" ]] && [[ -s "${file}" ]]; then
	echo "${file} exists AND is not empty"
fi

# || : OR (at least one must be true)

if [[ -f "${file}" ]] || [[ -s "${file}" ]]; then
	        echo "${file} eihter exists OR is empty"
fi

# File must exist, is readable and must have content (ASSIGNMENT)
#
#
