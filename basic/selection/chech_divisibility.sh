echo "Enter the divisior"
read divisior
echo "Enter the dividend"
read dividend
if [ $((dividend%divisior)) == 0 ]
then
  echo "$dividend is divisible by $divisior"
else
    echo "$dividend is not divisible by $divisior"
fi
