l=60
b=40
p=$(( $l * $b ))
area=$(awk "BEGIN {printf \"%.4f\",0.3048 * 0.3048 * ${l} * ${b}}")
echo $area "mtsq"
echo "area of 5 such plots" $(awk "BEGIN {printf \"%.4f\", 5 * ${area}}")
