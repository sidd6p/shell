echo "Enter a number"
read a
if [ $(($a % 3)) == 0 ]
then
  echo "$a is divisible by 3"
else
  echo "$a is not divisible by 3"
fi
