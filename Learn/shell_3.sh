echo -e "Hello earth\n"
echo "Hello sidd\n" #this line will not read \n as newline charactera as there is no -e
echo -e "Hello user \c" #suppress trailing new line with backspace interpretor ‘-e‘ to continue without emitting new line.
echo -e "How\v are\v you" #his option is used to create vertical tab spaces.
echo *
#echo * is similiar to ls
echo -n "How was your day" #this will not echo trailing newline
echo "Hello earth"
# echo -e "Hello user \c" <--> echo -n "How was your day"
echo -e "123\b\b\b\b5\b6" # --> 623
echo -e "123\b\b\b56" # --> 563
echo -e "123\b\b456" # -->1456

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
