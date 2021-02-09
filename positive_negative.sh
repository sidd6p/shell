#run in bash script
echo "Enter two number"
read a
if [ $a -gt 0 ]
then
  echo "$a is positive"
elif [ $a == 0 ]
then
  echo "$a is zero"
else
  echo "$a is negative"
fi
