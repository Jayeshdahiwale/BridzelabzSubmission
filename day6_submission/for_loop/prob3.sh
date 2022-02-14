read -p "Enter the number :" num
if [[ $num -eq 1 || $num -eq 0 ]]
  then
    echo "Number is neither prime not composite"
elif [ $num -eq 2 ]
  then
    echo "This is prime number"
fi
p=2
for ((i=2;i<$num;i++))
do
	p=0
	if [ $(($num % $i)) -eq 0 ]
		then
			p=1
			break
        fi
done
if [ $p -eq 1 ]
  then
    echo "This is not prime number"
elif [ $p -eq 0 ]
  then
    echo "This is prime number"
fi
