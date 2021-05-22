for user in `who | awk '{print $1}'`
do
  echo "$user ..........."
  write $user
done


echo "Something new"
array=`ls`
len=${#array[*]}
j=${array[1]}
echo "first element is $j"
echo .... $len.....
for i in $array
do
        echo $i
done
