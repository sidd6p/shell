#!/bin/sh

echo "Enter the number"
read num
for((i=1; i<=num; i++)){
    for((e=0; e < $num - i; e++)){
        echo -e -n "\t"
    }
    for((j=i;j<=((2*i)-1);j++)){
        echo -e -n "$j \t"
    }
    for((k=((2*i) -2); k >= i; k-- )){
        echo -e -n "$k \t"
    }
    echo " "
}
