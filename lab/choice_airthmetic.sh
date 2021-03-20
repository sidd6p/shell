echo "Enter two number"
read nums1
read nums2
echo "1 : addition"
echo "2 : subtraction"
echo "3 : Multiplication"
echo "4 : division"
read choice
case $choice in
	1)
  c=$(expr "$nums1" + "$nums2")
  echo "Sum of $nums1 and $nums2 is $c"
  ;;
  2)
  c=$(expr "$nums1" - "$nums2")
  echo "Subtraction of $nums1 and $nums2 is $c"
  ;;
	3)
  d=$(expr "$nums1" \* "$nums2")
  echo "Multiplication of $nums1 and $nums2 is $d"
  ;;
  4)
  if [ $nums2 == 0 ]
  then
    echo "Second number cannot zero"
  else
    c=$(expr "$nums1" / "$nums2")
    echo "Sum of $nums1 and $nums2 is $c"
  fi
  ;;
	*)
		echo "Invalid choice"
esac
