#!/bin/sh

for file in `ls`
do
if [ -f $file ]
then
echo "Regular `file $file`, Regular"
perm=`ls -l $file | awk '{print $1}'`
echo -e "Old permission is $perm"
chmod 666 $file
perm=`ls -l $file | awk '{print $1}'`
echo -e "New permission is $perm"
echo -e "\n\n"
else
echo "`file $file`\n"
fi
done