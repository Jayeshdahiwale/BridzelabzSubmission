read -p "Enter the value in inch: " num

RESULT=$(awk "BEGIN {printf \"%.2f\",${num}/12}")
echo $RESULT
