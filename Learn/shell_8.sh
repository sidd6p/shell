for ((i=2; i<=($1/2); i++)){
        #if (( $1%i==0 )) # very flexible execution
        if [ $(($1 % $i))==0 ] # need $ to get needed results
        then
        echo "For loop break"
        break
        else
        echo "For loop continue"
        fi
    }
echo "For loop ends"


a=10
b=20
c=a+b 
echo $c # --> a+b
c=$a+$b
echo $c # --> 10+20
c=$(($a+$b))
echo $c # --> 30
c=$((a+b))
echo $c # --> 30
c=$(($a +b))
echo $c # --> 30
c=`expr $a+$b`
echo $c # --> 10+20
c=`expr $a + $b`
echo $c # --> 30
c=` expr $a + $b `
echo $c # --> 30

echo "Multiply special case"
a=10
b=20
c=a+b 
echo $c # --> a+b
c=$a\*$b
echo $c # --> 10*20
<< 'Comment'
c=$(($a \* $b))
echo $c # syntax error: invalid arithmetic operator (error token is "\* 20")
c=$((a \* b))
echo $c # syntax error: invalid arithmetic operator (error token is "\* 20")
c=$(($a \* b))
echo $c # syntax error: invalid arithmetic operator (error token is "\* 20")
Comment
c=`expr $a\*$b`
echo $c # --> 10*20
c=`expr $a \* $b`
echo $c # --> 200
c=` expr $a \* $b `
echo $c # --> 200