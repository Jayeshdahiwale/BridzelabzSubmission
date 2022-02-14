money=100
win=0
rounds=0
while [[ $money -ne 200 && $money -ne 0 ]]
do
  reward=$(( RANDOM % 2 ))
  rounds=$(( $rounds + 1 ))
  if [ $reward -eq 0 ]
    then
      money=$(( $money - 1 ))
  else
    money=$(( $money + 1 ))
    win=$(( $win +1 ))
  fi
done

if [ $money -eq 200 ]
  then
    echo "He won the gamble"
else
  echo "He lost the gamble"
fi
echo "No. of wins :" $win
echo "No of rounds :" $rounds
