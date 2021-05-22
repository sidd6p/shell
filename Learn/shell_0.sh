#!/bin/sh


pwd

#assignment operator
#for assigning value we donnot use $ and for accesss the value we use $
a=10
#$a=10 #10=10: command not found
b=a # --> b = a
#b = $a # --> b: command not found, no space areound operator
b=$a
echo $a
echo $b


echo "Hello what is yout name!"
read name
readonly name
#name is read only, henec its value cannot be changed.
echo "It nice to meet you, $name"
#name="sarthak"
#name = "sarthak" is wrong
echo "It nice to meet you, $name"
#unset name
family_name="purwar"
echo "It nice to meet you, $name $family_name"
unset family_name
echo "It nice to meet you, $name $family_name"


echo "Process id of current shell is $$"
echo "File name of current script $0"
echo "Exit status of last command executed $?"
echo "PID of last background command $!"


echo "Total number of command line argument $#"
echo "$*"
echo "$@"
# the "$*" special parameter takes the entire list as one argument with spaces between them.
#the "$@" special parameter takes the entire list and separates it into separate arguments.

for TOKEN in $@
do
   echo $TOKEN
done