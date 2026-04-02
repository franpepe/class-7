#!/bin/bash

fruits=("apple" "banana" "carrots" "Date" "eggplant") 

#This would show all fruits
echo "These are currently present ${fruits[@]}"

#This would print out second fruit
echo "Do you like ${fruits[1]}?"

#This will print from the second to the fourth
echo "I like ${fruits[@]:1:3}"

#Prints from the fourth to the end
echo "${fruits[@]:3}"
