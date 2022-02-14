head_count=0
tail_count=0
while [[  $head_count -lt 11 && $tail_count -lt 11 ]]
do
  num=$((RANDOM % 2))
  if [ $num -eq 0 ]
    then
      head_count=$(($head_count + 1))
      echo "Head"

  else
    tail_count=$(($tail_count + 1))
    echo "Tail"
  fi
done
if [ $head_count -eq 12 ]
  then
    echo "Hoorray Head won"
else
  echo "Hoorray Tail won"
fi
