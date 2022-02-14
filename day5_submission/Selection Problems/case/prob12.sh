read -p "Enter "1" for ft to in "2" for in to ft "3" for ft to mt "4" for mt to ft :" num
case $num in
  1)
    read -p "Enter the value want to convert :" value
    result=$(awk "BEGIN {printf \"%.4f\",${value} * 12}")
    echo $result
    ;;
  2)
    read -p "Enter the value want to convert :" value
    result=$(awk "BEGIN {printf \"%.4f\",${value} * 0.083}")
    echo $result
    ;;
  3)
    read -p "Enter the value want to convert :" value
    result=$(awk "BEGIN {printf \"%.4f\",${value} * 0.3048}")
    echo $result
    ;;
  4)
    read -p "Enter the value want to convert:" value
    result=$(awk "BEGIN {printf \"%.4f\",${value} * 3.2808}")
    echo $result
    ;;

  *)
    echo "Enter Valid No"
    ;;
esac
