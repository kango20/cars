#!/bin/bash
#cars.sh
#Karen Ngo

while echo "$CHOICE" | egrep -v "^[3]$" >/dev/null 2>&1
do
	echo "Type the number 1 to enter a new car"
	echo "Type the number 2 to display the list of cars"
	echo "Type the number 3 to quit and exit the program"
	read CHOICE
	case "$CHOICE" in 
	1)
		echo "Enter a year: "
		read YEAR
		echo "Enter a make: "
		read MAKE
		echo "Enter a model "
		read MODEL
		echo "$YEAR:$MAKE:$MODEL" >> My_old_cars ;;
	2)
		sort My_old_cars ;;
	3)
		echo "Goodbye" ;;
	esac
done
