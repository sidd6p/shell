#floyd's triangle
echo "Input number of rows"
read num
n=1
echo -e "Floyd's triangle\n"
#-e is for evoluatte escape sequence
for(( i=1; i<=num; i++ ))
do
  for(( j=1; j<=i; j++))
  do
    echo -n "$n "
    ((n++))
  done
  echo -e " \n "
done
