#Create a script that searches for a specific word in a file and counts its occurrences.
read -p "Enter the word you want to search: " word
read -p "Enter the name of the file: : " fname

if [ -f "$file" ];
then
count=$(grep -o -i "$word" "$file" | wc -l)
echo "The word '$word' appears $count times in the file '$file'."
else
echo "file "$file" not found."
fi 