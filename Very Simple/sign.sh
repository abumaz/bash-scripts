read -p "Enter a number to check if it is positive: " num
if [ $num -gt 0 ]
then
	echo "$num is positive."
else
	echo "$num is negative."
fi
