#author Siddhartha Purwar
#date 27-feb-2021
N=$1
while(( $N!=0 ))
do
echo "Enter the number of terms for series 2000, 2000, 1000, 333, 83, ....."
read num
  start=2000
  for((i=1; $i<=$num; i++))
  do
    echo -n -e "$start\t"
    start=$(($start/$i))
  done
  echo -e "\n"
  N=$(($N-1))
done
