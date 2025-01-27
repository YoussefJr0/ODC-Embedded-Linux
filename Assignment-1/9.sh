#Write a shell script that converts all filenames in a directory to lowercase.
if[ -z "$s1" ]
then
echo "Usage: $0 <directory>"
    exit 1

dir="$1"

if [ ! -d "$dir" ]
then 
echo "Error : '$dir' is not a valid directory"
fi

for file in "$dir"/*; do
    # Check if it's a file (not a subdirectory)
    if [ -f "$file" ]; then
        # Get the lowercase version of the filename
        lowercase_file=$(echo "$file" | tr '[:upper:]' '[:lower:]')
        
        # Rename the file to lowercase
        if [ "$file" != "$lowercase_file" ]; then
            mv "$file" "$lowercase_file"
            echo "Renamed: '$file' -> '$lowercase_file'"
        fi
    fi
done
