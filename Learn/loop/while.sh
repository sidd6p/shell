echo "Enter a input"
read num
i=1
sum=0
#while [ $i -le $num ]
while (($((i<=num))))
do
  sum=$((sum + i))
  i=$((i+1))
done
echo "Sum of first $num natural numbers is $sum"
