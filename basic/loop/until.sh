echo "Enter a input"
read num
i=1
sum=0
until (($i > $num))
#until [ $num -lt $i ]
do
  sum=$((sum + i)) #doubt
  i=$((i + 1)) #doubt
done
echo "Sum of first $num natural numbers is $sum"
