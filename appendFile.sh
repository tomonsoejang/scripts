TEXT=$1
if [ -z "$TEXT" ]; then
	echo -e "\e[31mError : \e[39mmissing TEXT to append to the file"
	echo -e "\e[32mSyntax : \e[39mappendText \"TEXT\" \"FILENAME\""
	exit
else
	FILE=$2
	if [ -z "$FILE" ]; then
		echo -e "\e[31mError : \e[39mmissing FILENAME i.e. where to append the text"
		echo -e "\e[31mSyntax : \e[39mappendText \"TEXT\" \"FILENAME\""
		exit
	fi
fi

echo $TEXT >> $FILE

