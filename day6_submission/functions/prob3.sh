function primecheck(){
num=$1
if [[ $num -eq 1 || $num -eq 0 ]]
  then
    return 2  #2 for neither composit nor prime  
elif [ $num -eq 2 ]
  then
    return 1
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
    return 0 #0 for composite number
elif [ $p -eq 0 ]
  then
    return 1    #1 for prime number
fi
}

function palindrome(){
s=0
rev=""
temp=$1
num=$1
while [ $num -gt 0 ]
do

    s=$(( $num % 10 ))

    num=$(( $num / 10 )) 

    rev=$( echo ${rev}${s} ) 
done

if [ $temp -eq $rev ];
then
    return 1 #1 for palindrome
else
    return 0 # for not palindrome
fi
}

function palindrome_prime_check(){
primecheck $1
x=`echo $?`
palindrome $1
y=`echo $?`
if [[ $x -eq 1 && $y -eq 1 ]]
  then
    echo "Given no is palindrome as well as prime"
elif [[ $x -eq 1 && $y -eq 0 ]]
  then
    echo "Given no is not palindrome but it is prime"
elif [[ $x -eq 0 && $y -eq 1 ]]
  then
    echo "Given no is palindrome but not prime"
elif [[ $x -eq 0 && $y -eq 0 ]]
  then
    echo "Given no is not palindrome and not prime"
elif [[ $x -eq 2 && $y -eq 1 ]]
  then
    echo "Given no is palindrome but not prime and not composite"
fi


}

read -p "Enter the number :" num
palindrome_prime_check $num
