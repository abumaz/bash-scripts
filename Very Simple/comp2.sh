echo "Enter two numbers to compare them\n"
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
if [ $num1 -gt $num2 ]
then
	echo "$num1 is greater than $num2."
else
	echo "$num2 is greater than $num1."
fi
