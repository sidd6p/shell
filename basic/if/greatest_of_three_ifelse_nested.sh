echo "Enter three number"
read num1
read num2
read num3
if [ $num1 -gt $num2 ]
then
  if [ $num1 -gt $num3 ]
  then
    echo "Greatest is $num1"
  else
    echo "Greatest is $num3"
  fi
else
  if [ $num2 -gt $num3 ]
  then
    echo "Greatest is $num2"
  else
    echo "Greatest is $num3"
  fi
fi
