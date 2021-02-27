#run in bash script
echo "Enter two number"
read a
read b
c=$(expr "$a" + "$b")
d=$(expr "$a" \* "$b")
#Here is a fix. * means "all files in the current directory". To instead mean a literal asterisk/multiplication character, you have to escape it:
echo "Sum of $a and $b is $c"
echo "Multiplication of $a and $b is $d"
