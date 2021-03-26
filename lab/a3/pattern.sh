#author siddhartha purwar
#date: 23-mar-2021
echo "Enter the number of lines"
read nums1
for(( i=1; $i<=$nums1; i++))
do
    echo -e "\n"
  if [ $(($i % 2)) != 0 ]
  then
  for((k = 1, k1 = 1; $k1 <= $(((2 * i) -1)); k = k + 2, k1++))
  do
    echo -e -n "$k\t"
  done
else
  for((j = 2, j1 = 1; $j1 <= $(((2 * i) -1)); j = j + 2, j1++))
  do
    echo -e -n  "$j\t"
  done
  fi
done
echo -e "\n"
