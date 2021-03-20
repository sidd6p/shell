for user in `who | awk '{print $1}'`
do
  echo "$user ..........."
  write $user
done
