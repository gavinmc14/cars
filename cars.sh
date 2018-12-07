# !/bin/bash
# cars.sh
# Gavin McCullough

echo "Cars!"
echo "You may add a new car to your saved cars by typing 'add_cars'."
echo "You may view saved cars by typing 'saved_cars'."
echo "You may exit the program by typing 'exit'."

while true; do
	x=":"
	read input

	case $input in
		add_cars)
			echo "What is the year of the car?"
			read year
			echo "What is the make?"
			read make
			echo "What is the model?"
			read model
			sentence="$year$x$make$x$model"
			echo $sentence >> My_old_cars.txt
			;;
		saved_cars)
			sort My_old_cars.txt | tr : " "
			;;
		exit)
			echo "Exiting program."
			exit 113
			;;
		*)
			echo "That's not an option, unfortunately. Please try a valid option."
	esac
done
