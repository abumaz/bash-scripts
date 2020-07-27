echo "This program prints all the armstrong numbers from 100 to 999"
for (( c=100; c<=999; c++ ))
do
        temp=$c
	temp2=0
        while [ $temp -gt 0 ]
        do
                x=$(( temp % 10 ))
                temp2=$(($temp2+$((x*x*x))))
                temp=$(( $temp / 10 ))
        done
        if [ $temp2 -eq $c ]
        then
                echo "$c is an Armstrong number!"
        fi      
done   
