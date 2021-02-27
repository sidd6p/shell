#author Siddhartha Purwar
#date 27-feb-2021
check_composite_number(){
  for(( i=2; $i <= ($1/2); i++))
  do
    if((($1 % $i)==0))
    then
      echo "$1 is a composite number"
      return
    fi
  done
  echo "$1 is not a composite number"
}

check_automorphic_number(){
  temp=$1
  length=${#temp}
  divisor=$(echo "10^$length" | bc)
  temp=$(echo "$1^2" | bc)
  temp=$(( $temp%$divisor ))
  if(( $temp == $1 ))
  then
    echo "$1 is automorphic number"
    return
  fi
  echo "$1 is not automorphic number"
}

check_abundant_number(){
  temp=0
  for(( i=1; $i<=($1/2); i++))
  do
    if(( ($1 % $i)==0))
    then
      temp=$(( $temp+$i))
    fi
  done
  if(($temp>=$1))
  then
    echo "$1 is an abundant number"
    return
  fi
  echo "$1 is not an abundant number"
}

while((1))
do
  echo -e "Enter the choice\n1.Check if a number is a Composite number
2.Check if a number is an Automorphic number
3.Check if a number is an Abundant number
q4_34.Exit"
  read choice
  case $choice in
    1)
    echo "Enter a number"
    read num
    check_composite_number $num
    ;;
    2)
    echo "Enter a number"
    read num
    check_automorphic_number $num
    ;;
    3)
    echo "Enter a number"
    read num
    check_abundant_number $num
    ;;
    4)
    exit
    ;;
    *)
    echo "Invalid choice"
  esac
done
