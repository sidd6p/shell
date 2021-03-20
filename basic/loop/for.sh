for val in {2..20..2}
do
  echo "$val"
done


for val in 0 1 2 3 4 5 6 7 8 9 10 10
do
  echo "$val"
done


for val in {0..20..2}
{
  echo "$val"
}


echo "Enter a number for factorial"
read n


fact=1
for(( i = 1; i <= n; i++))
do
  fact=$((fact * i))
done
echo "Factorial of $n is $fact"

fact=1
for(( i = 1; i <= n; i=`expr $i + 1`))
do
  fact=$((fact * i))
done
echo "Factorial of $n is $fact"



fact=1
for((i=2;i<=n;i++))
{
  fact=$((fact * i))  #fact = fact * i
}
echo $fact
read b
