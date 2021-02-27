#author Siddhartha Purwar
#date 28-feb-2021
echo "Enter number of product"
read n
remark(){
  if(( $1>=90 ))
  then
    echo "Excellent"
  elif(( $1>=80 ))
  then
    echo "Very good"
  elif(( $1>=70 ))
  then
    echo "Good"
  elif(( $1>=60 ))
  then
    echo "Fair"
  elif(( $1>=55 ))
  then
    echo "Bad"
  else
    echo "Poor"
  fi
  return
}

for(( i=1; $i<=$n; i++ ))
do
  echo "Enter number of rating for product $i"
  read N
  sum=0
  average=0
  if(($N<=0))
  then
    echo "No rating or invalid rating is provided for Product $i"
  else
    for(( j=1; $j<=$N; j++ ))
    do
      read temp
      if(( ($temp>100) || ($temp<0) ))
      then
        echo "Rating is accepted iff 0<=rating<=100"
        j=$(($j-1))
      else
        sum=$(($sum+$temp))
      fi
    done
    average=$(( $sum / $N ))
    echo -n "Product number $i is "
    remark $average
  fi
done
