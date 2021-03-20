#Author: Siddhartha Purwar[19BBS0072]
#23feb2021 special_lab
#triangular_numer_check
#Triangular Numbers are those numbers which are obtained by continued summation of the natural numbers 1, 2, 3, 4, 5, etc.
#Triangular Number Example: 15 is Triangular Number because it can be obtained by 1+2+3+4+5+6 i.e. 1+2+3+4+5+6=15
echo "Enter an integer"
read num
sum=0
flag=0
for((i=1; sum<=num ;i++))
do
  ((sum+=i))
  if [ $sum -eq $num ]
  then
    flag=1
    break
  fi
done
if [ $flag -eq 1 ]
then
  echo "$num is triangular number"
else
  echo "$num is not triangular number"
fi
