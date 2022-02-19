echo "Welcome to Employee Wage Computation Program on Master Branch"
read -p "Enter the case no : " num
case $num in
  1)
    attendance=$((RANDOM%2))
    if [ $attendance -eq 0 ]
    then
      echo "Absent"
    else
      echo "Present"
    fi
    ;;
  2)
    echo "Daily wage of employee :Rs."$((20 * 8))
    ;;
  3)
    read -p "Enter the name of part time employee & wage per hour: " name wage
    declare -A dataset=([Name]=$name [wages]=$(($wages *8 )))
    echo ${dataset[@]}
    ;;
  4)
    ;;
  5)
    echo "Wages for a month : Rs."$((20 * 8 * 20))
    ;;
  6)
    echo "Wages till 100 hours and 20days : Rs."$((100 * 20 + 20 * 8 * 20))
    ;;
  7)
    function workhours(){
        echo "daily work hours: " 8
    }
    workhours
    ;;
  8)
    declare -A wages=([daily_wage]=160 [total_wage]=$((160*20)))
    echo ${wages[@]}
    ;;
  9)
    read -p "Enter the day number of the work : " num
    declare -A data=([day]=$num [daily_wage]=$((160)) [total_wage]=$((160 * $num)))
    echo ${data[@]}
    ;;
  *)
    echo "Invalid input"
    ;;
esac
