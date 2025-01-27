#Create a script that checks for and removes duplicate lines in a text file.
if [ -z "$1" ]
then 
echo "Usage: $0 <file>"
fi

file="$1"
if [ ! -f "$file" ]
then 
echo "Error: '$file' is not a valid file"
else 
sort "$file" | uniq > "$file.tmp" && mv "$file.tmp" "$file"
echo "Duplicate lines removed from '$file'."
fi