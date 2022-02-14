function DegF2DegC(){
degC=`echo $1 | awk '{print ($1 - 32)* 5/9 }'`
echo $degC "degree celsius"
}
function DegC2DegF(){
degF=`echo $1 | awk '{print $1 * 5/9 +32 }'`
echo $degF "degree Fahreneit"
}

read -p "Type 1 for DegF to DegC Type 2 for DegC to DegF : " num
case $num in
  1)
    read -p "Enter the temp between 32F to 212F : " temp
    DegF2DegC $temp
    ;;
  2)
    read -p "Enter the temp between 0C to 100C : " temp
    DegC2DegF $temp
    ;;
  *)
    echo "Invalid input"
esac

