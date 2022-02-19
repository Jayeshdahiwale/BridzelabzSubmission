heads=0
tails=0
while [[ $heads -ne 21 && $tails -ne 21 ]]
do
  results=$((RANDOM%2))
  if [ $results -eq 0 ]
  then
    heads=$(($heads+1))
  else
    tails=$(($tails+1))
  fi
done

############################################
function myfunc(){
heads=$1
tails=$2
if [ $heads -eq $tails ]
then
  echo "Ti"
  while [ $(($heads - $tails)) -lt 2 && $(( $tails - $heads )) -lt 2 ]
  do
    results=$((RANDOM%2))
    if [ $results -eq 0 ]
    then
      heads=$(($heads+1))
    else
      tails=$(($tails+1))
    fi

  done
  myfunc $heads $tails
elif [ $heads -gt $tails ]
then
  echo "Heads won"
  echo "Won by " $(($heads-$tails))
else
  echo "Tails won"
  echo "Won by " $(($tails-$heads))

fi
}

myfunc $heads $tails
