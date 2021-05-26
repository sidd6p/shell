<< 'MULTILINE-COMMENT'
echo "choice 1 or 2"
read choice
case $choice in
	1)
		if cp try.sh nestedif.sh
		then
			echo "cpoy successfull"
		else
			echo "Copy failed"
		fi
		;;
	2)
		if mv asb sdsf
		then
			echo "moved successfull"
		else
			echo "not moved successfull"
		fi
		;;
	*)
		echo "Invalid choice"
esac
MULTILINE-COMMENT

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

