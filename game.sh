#!/bin/bash
###	This is a mini game written by Ali Afshari	###
###		Last Edited on 12/20/2024		###



num=$(( $RANDOM % 100 ))
while :
do
	read -p "Guess the number? " guess
	count=$(( $count + 1 ))
	if [ $guess -eq $num ]
	then
		echo "... That's right good job!" 
		echo "... The number was $num"
		echo "... You Guessed correctly in $count guesses!"
		break
	elif [ $guess -lt $num ]
	then
		echo "... Go Higher!"
	elif [ $guess -gt $num ]
	then
		echo "... Go Lower!"
	fi
done
