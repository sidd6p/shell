#for assigning value we donnot use $ and for accesss the value we use $
#for var in 1 2 3 4 5 6 7 8 9 10
#for var in {1..20}
echo "Enter a number for factorial"
read n
fact=1
for(( i = 1; $i <= $n; i++))
do
  fact=$(( fact * i ))#fact = $(()) will not work
done
echo "Factorial of $n is $fact"
