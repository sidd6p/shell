#!/bin/bash
for user in `who | awk '{print $1}'`
do
  echo "$user ..........."
  write $user
done
echo "Writing to user is done"


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



#Command substitution
# use backticks " ` ` " to execute shell command
echo "Username is " `uname -o` #--> Msys
# executing bash command without backticks
echo "Username is " uname -o # --> uname -o
# $ "$( )"is also use to execute shell command
echo "Username is " $(uname -o) #--> Msys


