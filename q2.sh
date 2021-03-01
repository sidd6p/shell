for file in `ls`
do
        if [ -d $file ]
        then
                echo $file is a directory
                echo -e "\n\n"
        elif [ -c  $file ]
        then
                echo $file is a character device file

        elif [ -b  $file ]
        then
                echo $file is a block device file

        elif [ -S  $file ]
        then
                echo $file is a domain socket

        elif [ -p  $file ]
        then
                echo $file is a named pipe


        elif [ -L  $file ]
        then
                echo $file is a symbolic link

        elif [ -f $file ]
        then
                echo "$file is a regular file "
                perm=`ls -l $file | awk '{print $1}'`
                echo -e "Old Permission of $file :\t $perm"
                chmod 666 $file
                perm=`ls -l $file | awk '{print $1}'`
                echo -e "New Permission of $file :\t $perm"
                echo -e "\n\n"

        else

                echo $file
        fi

done
