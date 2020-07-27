echo "Enter 3 numbers to compare them.\n"
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter the third number: " num3
if [ $num1 -gt $num2 ] 
then	
	if [ $num1 -gt $num3 ] 
	then	
		echo "$num1 is the largest number among the three."
	else
		echo "$num3 is the largest number among the three."
	fi
else
	if [ $num2 -gt $num3 ]
	then
		echo "$num2 is the largest number among the three."
        else    
                echo "$num3 is the largest number among the three."
        fi
fi
