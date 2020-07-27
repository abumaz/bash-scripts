echo
echo "You think you can beat me in a game of Rock Paper Scissors?"
read -p "Enter your name, Challenger: " name
echo
scorec=0
scorep=0
for ((  ; ; ))
do
	echo "Rock! Paper! Scissor!"
	comp=$(( $(( RANDOM % 3 )) + 1 ))
	read -p "Enter 1 for Rock, 2 for Paper and 3 for Scissor: " player
	echo
	if [ $comp -eq $player ]
	then
		echo "DRAW!"
		echo
	elif [ $comp -eq $(( $player - 1 )) ] || [ $comp -eq $(( $player + 2 )) ]
	then
		echo "$name Wins!"
		scorep=$(( $scorep + 1 ))
		echo
		echo "Score is :"
		echo "$name: $scorep"
		echo "Computer: $scorec"
	else
		echo "Computer Wins!"
		scorec=$(( $scorec + 1 ))
		echo
		echo "Score is :"
		echo "$name: $scorep"
		echo "Computer: $scorec"
	fi
	read -p "Do you wanna continue? (y/n)" choice
	if [ "$choice" = "y" ] || [ "$choice" = "Y" ]
	then
		reply==$(( RANDOM % 3 ))
		if [ $reply=0 ] 
		then
			echo
			echo "Alright then..."
		elif [ $reply=1 ]
			then
			echo
			echo "Bring It On!"
		else
			echo
			echo "Find me in the code..." #dQw4w9WgXcQ

		fi
		echo
	else
		if [ $scorep -gt $scorec ]
		then
			echo
			echo "$name Wins! Congrats!"
			echo
			break
		elif [ $scorep -eq $scorec ]
		then
			echo "The game ended in a DRAW!"
			echo
			break
		else
			echo "Computer Wins! Better Luck Next Time..."
			echo
		fi
		echo "Score was :"
		echo "$name: $scorep"
		echo "Computer: $scorec"
		break
	fi
done
