check_composite_number (){
    for ((i=2; i<=($1/2); i++)){
        if (($1%i == 0))
        #if [ $(($1%$i)) == 0 ]
        #if (( $(($1%$i)) == 0 ))
        then
        echo "Composite Number"
        return
        fi
    }
    echo "Not Composite Number"
    return
}

check_automorphic_number (){
    temp_num=$1
    length=${#num}
    divisior=$(echo "10^$length" | bc) 
    temp_num_2=$(echo "$1^2" | bc)
    echo $temp_num_2
    check_number=$(($temp_num_2%$divisior))
    echo "$check_number"
    if (($check_number == $1))
    then
        echo "$1 is automorphic number"
        return
        else
        echo "$1 is not automorphic number"
        fi
    return
}

check_abundant_number (){
    sum=0
        for ((i=2; i<=($1/2); i++)){
        if (($1%$i == 0))
        then
        sum=$((sum + i))
        fi
    }
    if [ $sum -gt $1 ]
    then
        echo "Abundant Number"
        else
        echo "Not Abundant Number"
        fi
    return
}

echo -e "Enter the choice\n
1.Check if a number is a Composite number
2.Check if a number is an Automorphic number
3.Check if a number is an Abundant number
4.Exit"
read choice
case $choice in
1)
echo "Enter the number"
read num
check_composite_number $num;
;;
2)
echo "Enter the number"
read num
check_automorphic_number $num;
;;
3)
echo "Enter the number"
read num
check_abundant_number $num;
;;
*)
echo "Invalid choice"
esac