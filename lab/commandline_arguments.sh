# $* is same as $@
# $# he command line argument passed
# $0 NAme of the bash script
echo "the number of command line argument pass is $#"
echo the name of bash script is $0
echo -e "The command line argument are :\n"
for arg in $*
do
  echo $arg
done
