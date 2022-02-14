read -p "Please think of a number between 1 & 100"
echo $((RANDOM %100 +1))
read -p "Enter the reward 0 or 1 " reward
reward

while [ $reward -eq 0 ]
do
  num=$((RANDOM %100 +1))
  echo $num

  read -p "Enter the reward either 0 or 1 :" reward
  if [ $reward -eq 0 ]
    then
      read -p "Enter weather shown number is greater(1) or lesser(0) :" hint
      if [ $hint -eq 1 ]
        then 
          num= $((RANDOM % ($num/2) ))
          echo $num
      else
        num=$((RANDOM %(100-$num) + $num + 1))
      fi
  else
    echo "This is your number "$num 
        
  fi
done
