echo "Enter file one"
read file1
echo "Enter file second"
read file2
echo "Enter the choice"
read choice
case $choice in
  1)
  if cp $file1 $file2
  then
    echo "copy task done"
  else
    echo "Copy task fail"
  fi
  ;;
  2)
  if mv $file1 $file2
  then
    echo "Rename task done"
  else
    echo "Rename task fail"
  fi
  ;;
  *)
  ;;
#it is not necessary to put ;; in the *) case
esac
read a
