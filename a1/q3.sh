echo "Enter the number of lines"
read nums1
echo -e "\n"
for (( i = 1; $i <= $nums1; i++))
do
  for ((k = i; $k <= $nums1; k++))
  do
    echo -n -e "\t"
  done
  for (( j = i; $j < (( 3*$i - 1 )); j++))
  do
    d=$(echo "sqrt(( (2*$i) - 1 - $j)^2 )" | bc)
    echo -n -e "$(( 2*$i - 1 - $d))\t"
  done
  echo -e "\n"
done
