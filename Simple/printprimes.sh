echo "This program prints all the prime numbers from 1 to 100"
for (( c=1; c<=100; c++ ))
do
        temp=$c
        temp2=0
	for (( i=2; i<c; i++ ))
        do
		if [ $(( c % i )) -eq 0 ]
		then
			break
		fi
		if [ $i -eq $(( c - 1 )) ]
		then
			echo "$c is a prime number!"
		fi
	done
done

