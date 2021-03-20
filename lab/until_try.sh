echo "Enter a input"
read num
i=1
sum=0
until (( $i > $num))
#until [ $i -lt $num ]
do
  sum=$((sum + i)) #doubt
  i=$((i + 1)) #doubt
done
echo "Sum of first $num natural numbers is $sum"
