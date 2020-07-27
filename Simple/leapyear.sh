read -p "Enter a year to check if it's a leap year or not: " year
if [ $(( year % 4 )) -ne 0 ]
then
	echo "$year is NOT a leap year."
else
	if [ $(( year % 400 )) -eq 0 ]
	then
		echo "$year is NOT a leap year."
	else
		echo "$year is a leap year!"
	fi
fi
