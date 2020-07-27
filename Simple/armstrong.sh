read -p "Enter a number to check if it's an armstrong number: " num
temp=$num
temp2=0
while [ $temp -gt 0 ]
do
	x=$(( temp % 10 ))
	temp2=$(($temp2+$((x*x*x))))
	temp=$(( $temp / 10 ))
done
if [ $temp2 -eq $num ]
then
	echo "$num is an Armstrong number!"
else
	echo "$num is not an Armstrong number."
fi

