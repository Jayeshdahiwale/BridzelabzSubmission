sum=0
count=0
for num in {1..5..1}
do
	p=$((RANDOM % 99 + 10))
	sum=$(($sum + $p))
	count=$(($count + 1))
done
RESULT=$(awk "BEGIN {printf \"%.2f\",${sum}/${count}}")
echo "SUM :"$sum
echo "Average:"$RESULT
