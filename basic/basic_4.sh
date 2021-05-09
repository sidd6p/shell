#!/bin/bash
# use predefined variables to access passed arguments
#echo arguments to the shell
echo $1 $2 $3 ' -> echo $1 $2 $3'

# We can also store arguments from bash command line in special array
args=("$@")
#echo arguments to the shell
echo ${args[0]} ${args[1]} ${args[2]} ' -> args=("$@"); echo ${args[0]} ${args[1]} ${args[2]}'

#use $@ to print out all arguments at once
echo $@ ' -> echo $@'

# use $# variable to print out
# number of arguments passed to the bash script
echo Number of arguments passed: $# ' -> echo Number of arguments passed: $#' 


echo "\"hello\""


# bash trap command
trap bashtrap INT
# bash clear screen command
clear;
# bash trap function is executed when CTRL-C is pressed:
# bash prints message => Executing bash trap subrutine !
bashtrap()
{
    echo "CTRL+C Detected !...executing bash trap !"
}
# for loop from 1/10 to 10/10
for a in `seq 1 5`; do
    echo "$a/5 to Exit." 
    sleep 1;
done
echo "Exit Bash Trap Example!!!" 


trap 'ls' err exit
#execute ls on err or exit signal
# Call func function on exit
trap func exit
# Declare the function
function func() {
 
  echo "Task completed"
}
# Read the files and folders of the current directory list using for loop
for i  in *
do
  echo "$i"
done