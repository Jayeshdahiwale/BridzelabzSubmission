read -p "Enter the three numbers separated by space : " a b c
one=$(($a+$b*$c))
two=$(($a*$b+$c))
three=$(($c+$a/$b))
four=$(($a%$b+$c))
declare -A dict=([1]=$one [2]=$two [3]=$three [4]=$four)
declare -a array
for((i=1;i<=${#dict[@]};i++))
do
  array=(${array[@]} ${dict[$i]})
done

for((i=0;i<$((${#array[@]}-1));i++))
do
  for((j=$(($i+1));j<$((${#array[@]}));j++))
    do
      if [ ${array[$j]} -lt ${array[$i]} ]
      then
        temp=${array[$i]}
        array[$i]=${array[$j]}
        array[$j]=$temp
        
      fi
    done

done
echo "Array in ascending order: " ${array[@]}
declare -a reverse=(0 0 0 0)
j=0
for((i=$((${#array[@]}-1));i>=0;i--))
do
  reverse[$j]=${array[$i]}
  j=$(($j+1))
done

echo "Array in descending order: " ${reverse[@]}


