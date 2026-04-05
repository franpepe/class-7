#!/bin/bash

case $variable in          #checks this variable
	pattern_1)         #if variable matches pattern1
	    commands       #Run these command
	    ;;             #End of case

	pattern2|pattern3) #If variable matches pattern2 OR pattern3
	    commands	   #Run these commands
	    ;;
	*)		   # * means anything else - default case

esac
	
