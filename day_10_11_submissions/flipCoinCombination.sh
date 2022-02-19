read -p "Enter the number of times the coins will tossed: " n
declare -A singlet=([H]=0 [T]=0)
declare -A doublet=([HT]=0 [TH]=0 [HH]=0 [TT]=0)
declare -A triplet=([HHH]=0 [TTT]=0 [HTT]=0 [HHT]=0 [THH]=0 [TTH]=0 [HTH]=0 [THT]=0 )
for((i=0;i<$n;i++))
do
  result1=$((RANDOM%2))
  if [ $result1 -eq 0 ]
  then
    singlet[H]=$((${singlet[H]}+1))
  else
    singlet[T]=$((${singlet[T]}+1))
  fi
 
done

for((i=0;i<$n;i++))
do
  result2=$((RANDOM%4))
  if [ $result2 -eq 0 ]
  then
    doublet[HT]=$((${doublet[HT]}+1))
  elif [  $result2 -eq 1 ]
  then
    doublet[TH]=$((${doublet[TH]}+1))
  elif [  $result2 -eq 2 ]
  then
    doublet[HH]=$((${doublet[HH]}+1))
  else
    doublet[TT]=$((${doublet[TT]}+1))

  fi

done


for((i=0;i<$n;i++))
do
  result3=$((RANDOM%8))
  if [ $result3 -eq 0 ]
  then
    triplet[HHH]=$((${triplet[HHH]}+1))
  elif [  $result3 -eq 1 ]
  then
    triplet[TTT]=$((${triplet[TTT]}+1))
  elif [  $result3 -eq 2 ]
  then
    triplet[HTT]=$((${triplet[HTT]}+1))
  elif [  $result3 -eq 3 ]
  then
    triplet[HHT]=$((${triplet[HHT]}+1))
  elif [  $result3 -eq 4 ]
  then
    triplet[THH]=$((${triplet[THH]}+1))
  elif [  $result3 -eq 5 ]
  then
    triplet[TTH]=$((${triplet[TTH]}+1))
  elif [  $result3 -eq 6 ]
  then
    triplet[HTH]=$((${triplet[HTH]}+1))
  else
    triplet[THT]=$((${triplet[THT]}+1))


  fi

done

echo ${!singlet[@]}
echo ${singlet[@]}

echo ${!doublet[@]}
echo ${doublet[@]}

echo ${!triplet[@]}
echo ${triplet[@]}

function myfunc(){
dict=$1
max=0
for i in ${!dict[@]}
do
  if [ ${dict[$i]} -gt $max ]
  then
    max=${dict[$i]}
    p=$i
  fi
done
echo $p
echo $max
}


