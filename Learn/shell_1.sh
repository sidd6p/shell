#!/bin/sh

declare -a indices
indices=([0]="purple" [1]="reddish-orange" [2]="light green")
for((i=0; i < ${#indices[@]}; i++))
do
echo ${indices[${i}]}
done

echo "Hello earth"
name[0]="Siddhartha"
name[1]="Purwar"
last_name=(purwar, gupta)
echo "Full name is ${name[0]} ${name[1]}"
echo "Full name is ${name[0]}"
echo "Full name is ${name[*]}"
echo "Full name is ${name[@]}"
echo "last name is ${last_name[1]}"

echo "Enter two number"
read a
read b
val=`expr $a + $b`
div=$(expr "$a" / "$b")
echo "Addition is $val"
echo "Multilpication is (`expr $a \* $b`)"
echo "subtraction is $(expr "$a" - "$b")"
echo "division is $div"
val=`expr 2 + 2`
echo "Value of val is $val"
#2+2 is not correct; it should be written as 2 + 2.
#` ` are called backtick
#echo "$a is equal to $b:`expr [$a == $b]`"
