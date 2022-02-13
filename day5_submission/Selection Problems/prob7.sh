read -p "Enter the any of the number among (1,10,100,1000) :" num
if [ $num == 1 ]
  then
    echo "One"
elif [ $num == 10 ]
  then
    echo "Ten"
elif [ $num == 100 ]
  then
    echo "Hundred"
elif [ $num == 1000 ]
  then
    echo "Thousand"

else
  echo "Input out of range"
fi
