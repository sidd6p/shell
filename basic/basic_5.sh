#!/bin/bash

declare -r var1=1
echo "var1 = $var1" 
(( var1++ )) # var1: readonly variable

declare -i number
# The script will treat subsequent occurrences of "number" as an integer.		
number=3
echo "Number = $number"     # Number = 3
number=three
echo "Number = $number"     # Number = 0
# Tries to evaluate the string "three" as an integer.
n=6/3
echo "n = $n"       # n = 6/3
declare -i n
n=6/3
echo "n = $n"       # n = 2
declare -i var1   # var1 is an integer.
var1=2367
echo "var1 declared as $var1"
var1=var1+1       # Integer declaration eliminates the need for 'let'.
echo "var1 incremented by 1 is $var1."
# Attempt to change variable declared as integer.
echo "Attempting to change var1 to floating point value, 2367.1."
var1=2367.1       # Results in error message, with no change to variable.
echo "var1 is still $var1"

declare -a indices
#The variable indices will be treated as an array.

#A declare -f line with no arguments in a script causes a listing of all the functions previously defined in that script.
declare -f function_name
#A declare -f function_name in a script lists just the function named.
func1 ()
{
  echo This is a function.
}
declare -f        # Lists the function above.

declare -x var3=373
#The declare command permits assigning a value to a variable in the same statement as setting its properties.

