#!/bin/bash

read -p "Enter the name of your car brand:  " car

case ${car} in
	Tesla)
		#Runs if our variable is exactly Tesla
		echo "${car}'s car factory is in USA "
		# -n means no newline - next echo continues on the same line
		echo "Belongs to ELon Musk"
		;;

	BMW | Mercedes | Audi | Porshe)
	    #Runs if $car matches any of these four patterns
	    echo -n "${car}'s factory is in Germany"
	    echo " Engineering BABA"
	    ;;

	Toyota | Mazda | Mitsubuishi | Subaru)
	    #Runs if $car matches any of these four patterns
	    echo -n "${car}'s factory is in Japan"
	    echo " Engineering MAMA!"
  	    ;;

	*)
	    #This is the DEFAULT case - runs for all other brand
	    echo -n "${car}'s factory in unknown, i don't know this brand"
	    echo " You can educate me"

esac #End of case statement

echo ""
echo "You are a curious being"
