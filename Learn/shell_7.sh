#!/bin/sh

echo "f 1 start"
my_function () {
  local func_result="some result"
  echo "$func_result"
}

func_result="$(my_function)"
#we can call function as "my_function", but for returning the value we have to acll the function as ""$(my_function)"", as if it is a variable
echo $func_result
echo "F 1 over"

echo "F 2 start"
my_function_2 () {
  local func_result="some result"
  echo "$func_result"
  return 1000
}


func_result_2=$my_function_2
echo "$fun_result_2"
echo "f 2 over"

echo "F 3 start"
#Command line argument are local for each function

greeting () {
  echo "Hello $1"
}

greeting "Siddhartha"
echo "f 3 over"



echo "F4 start"
my_function () {
  echo "some result"
  return 55
}

my_function
echo $?
echo "F4 over"


echo "$1"