read -p "Enter the number :" num
p=1
for((i=$num;i>=1;i--))
do
  result=$(( $p * $i ))
  p=$result
done
echo $p
