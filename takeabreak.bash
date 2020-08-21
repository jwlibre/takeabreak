#!/bin/bash

# check that command line argument is an integer
if [ "$1" -eq "$1" ]
	then
		delay=$1
		while true
		do
			sleep $delay
			zenity --error --text="Take a break!\nLook away from your screen for 20 seconds to help look after your eyes." --title="Give your eyes a break!" --width=300
		done
else
	zenity --error --text="Error running takeabreak. Ensure you have provided a valid argument to the function call." --title="Error with takeabreak!" --width=400
	echo "Invalid delay time specified, exiting."
fi
