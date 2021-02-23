while(( 1 ))
do
  echo "Input an integer (0 to stop iterating)"
  read num
  if [ $num -lt 0 ]
  then
    echo -e "Negative values are not allowed\n"
    continue
  fi
  if [ $num -eq 0 ]
  then
    break
  fi
  fact=1
  for(( i=1; i<=num; i++ ))
  do
    ((fact*=i))
done
echo -e "The factorial of $num  is $fact\n"
done
