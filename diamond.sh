# !/bin/bash

read rows
var=$rows

if [ $((rows%2)) = 0 ]; then
	rows=$((rows-1))
fi

for(( i=1; i<=rows-2; i++ ))
do
	for(( spaces=i; spaces<=rows; spaces++ ))
	do
		if [ $((i%2)) != 0 ]; then
			echo -n " "
		fi
		
	done
	
	for(( stars=1; stars<=i; stars++ ))
	do
		if [ $((i%2)) != 0 ]; then
			echo -n "* "
		fi
	done
	
	if [ $((i%2)) != 0 ]; then
		echo
	fi
done

# this portion is for the reverse diamond code

for(( j=1; j<=rows; j++ ))
do
	for(( spaces=j; spaces>=1; spaces-- ))
	do
		if [ $((j%2)) != 0 ]; then
			echo -n " "
		fi
	done
	
	for(( stars=rows; stars>=j; stars-- ))
	do
		if [ $((j%2)) != 0 ]; then
			echo -n "* "
		fi
	done
	
	if [ $((j%2)) != 0 ]; then
		echo
	fi
done
