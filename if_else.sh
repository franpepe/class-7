#!/bin/bash


#if [[ condition ]]
#then
#    <commands>
#else
#    <other commands>
#fi

read -p "What is your name?" name

#check if empty
if [[ -z ${name} ]]
then
#this runs only if name is empty

	echo "Please enter your name"
else
#This runs only if name is NOT empty(false)
    echo "Hi ther ${name}"
fi

