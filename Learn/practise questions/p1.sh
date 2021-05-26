#!/bin/sh
echo "Enter number of product"
read p_num
for ((i=1; $i<=$p_num; i++))
do
echo -n "Enter the number of rating for Product "
echo $i
read no_rate
sum=0
avg=0
echo "Enter ratings"
for((j=1; j<=no_rate; j++))
do
read rating
sum=$(( $sum+$rating ))
done
avg=$((sum / $no_rate ))
echo "Average rating of product $i = $avg"
done