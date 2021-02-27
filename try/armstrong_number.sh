echo "Enter a nmber"
read num
temp_num=$num
reminder=0
result=0
until (( $temp_num == 0 ))
do
  remainder = $(( $originalNum % 10 ))
  result=$((($remainder * $remainder * $remainder) + $result))
  temp_num=$(( $temp_num / 10 ))
done
if ($result == $num)
then
  echo "$num is armstrong number"
else
  echo "$num is not armstrong number"
fi
