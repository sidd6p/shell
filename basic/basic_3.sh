echo -e "Hello earth\n"
echo "Hello sidd\n"#this line will not read \n as newline charactera as there is no -e
echo -e "Hello user \c" #suppress trailing new line with backspace interpretor ‘-e‘ to continue without emitting new line.
echo -e "How\v are\v you" #his option is used to create vertical tab spaces.
echo *
#echo * is similiar to ls
echo -n "How as your day"#this will not echo trailing newline
echo


for user in `ls`
do
  echo "$user ..........."
done

who
for user in `who | awk '{print $1, $3, $4}'`
do
  echo "$user ..........."
  echo "Hello"
done
