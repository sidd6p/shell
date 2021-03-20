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
