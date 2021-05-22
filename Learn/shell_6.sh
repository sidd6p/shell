#!/bin/bash

# bash for loop
for f in $( ls ); 
do
	echo $f
done 

#Declare bash string variable
BASH_VAR="Bash Script"

# echo variable BASH_VAR
echo $BASH_VAR

#when meta character such us "$" is escaped with "\" it will be read literally
echo \$BASH_VAR 

# backslash has also special meaning and it can be suppressed with yet another "\"
echo "\\" 
#Declare bash string variable
BASH_VAR="Bash Script"
 
# echo variable BASH_VAR
echo $BASH_VAR # --> Bash Script
 
# meta characters special meaning in bash is suppressed when  using single quotes 
echo '$BASH_VAR  "$BASH_VAR"' # --> $BASH_VAR  "$BASH_VAR"

#It is not possible to use another single quote within two single quotes not even if the single quote is escaped by backslash.
echo "$BASH_VAR  '$BASH_VAR'" # --> Bash Script  'Bash Script'

#Declare bash string variable
BASH_VAR="Bash Script"

# echo variable BASH_VAR
echo $BASH_VAR

# meta characters and its special meaning in bash is suppressed when using double quotes except "$", "\" and "`"
echo "It's $BASH_VAR  and \"$BASH_VAR\" using backticks: `date`" 

#Declare bash string variable
BASH_VAR="Bash Script"

# as a example we have used \n as a new line, \x40 is hex value for @
# and  is octal value for .
echo $'web: www.linuxconfig.org\nemail: web\x40linuxconfigorg$BASH_VAR' 
# web: www.linuxconfig.org
#email: web@linuxconfigorg$BASH_VAR

echo $(pwd) # --> /d/shell/shell/basic
echo `pwd` # --> /d/shell/shell/basic
echo pwd # --> pwd
echo 'pwd' # --> pwd
echo "pwd"  # --> pwd
# echo variable BASH_VAR
echo $BASH_VAR # --> Bash Script
echo $'$BASH_VAR\nok'
 #--> $BASH_VAR 
 #-->"ok" 
echo 'a\nb' #--> a\nb
echo $'a\nb'
# --> a
# -->b
echo "a\nb" # --> a\nb