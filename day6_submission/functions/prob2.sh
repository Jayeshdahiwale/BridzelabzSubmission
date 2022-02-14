read -p "Enter the number: " num
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
    echo "Number is palindrome"
else
    echo "Number is NOT palindrome"
fi
}

palindrome $num
