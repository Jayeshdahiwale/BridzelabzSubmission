read -p "Enter the three numbers :" num1 num2 num3
a=`echo $(( num1 + num2 * num3 ))`
b=`echo $(( num3 + num1 * num2 ))`
c=`echo $(( num1 % num2 + num3 ))`
d=`echo $(( num1 * num2 + num3 ))`
list="$a $b $c $d"
max=0
min=10000000
for i in $list
do
  if [ $i -ge $max ]
    then
      max=$i
  fi
  if [ $i -le $min ]
    then
      min=$i
  fi
done
echo "Maximum :"$max
echo "Minimum :"$min
