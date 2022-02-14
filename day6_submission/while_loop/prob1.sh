read -p "Enter the number :" num
i=1
j=256
while [ $i -lt $j ]
do
  k=$((2 ** $num))
  i=$(($i * $k)) 
  if [ $i -gt 256 ]
    then
      break
  fi
  echo $i

done

