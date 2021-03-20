echo "Enter source file"
read source_file
echo "Enter destination file name"
read destination_file
com=$(cp source_file destination_file)
if cp source_file destination_file
then
        echo "Copy task fail fail"
        echo $com
else
        echo "Copt task success"
fi
