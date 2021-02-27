echo "Enter Three number"
read a
read b
read c
if [ $a -gt $b -a $a -gt $c ]
then
  echo "$a is greatest"
elif [ $c -gt $b -a $c -gt $a ]
then
  echo "$c is greatest"
else
  echo "$b is greatest"
fi
