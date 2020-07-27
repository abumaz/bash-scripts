echo "Enter two numbers to swap using a 3rd variable\n"
read -p "Enter the 1st number: " num1
read -p "Enter the 2nd number: " num2
num3=$num1
num1=$num2
num2=$num3
echo "\nNow, the first number is: $num1"
echo "And the second number is: $num2"
