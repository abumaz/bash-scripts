echo
echo "This script is used to aproximate the time needed to read a book completely."
echo "[The book must be in txt format and in the directory of the script.]"
echo
read -p "Enter the name of the book: " book
data=($(wc -w "$book"))
words=${data[0]}
#read words filename <<< $(wc -w "$book")
echo 
echo "What's your speed of reading?(words/minute)"
read -p "Enter - if unknown: " choice
if [ "$choice" = "-" ]
then
	speed=200
else
	speed=$choice
fi
time=$(( words / speed ))
declare -i hours=$(( time / 60 ))
minutes=$(( time % 60 ))
echo
echo "It would take you aproximately $hours hours and $minutes minutes to read $book."
