#Create a shell script that finds and lists all empty files in a directory.

# Check if a directory is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

dir="$1"

# Check if the provided argument is a directory
if [ ! -d "$dir" ]; then
    echo "Error: '$dir' is not a directory"
    exit 1
fi

# Find and list all empty files
empty_files=$(find "$dir" -type f -empty)

if [ -z "$empty_files" ]; then
    echo "No empty files found in '$dir'"
else
    echo "Empty files in '$dir':"
    echo "$empty_files"
fi
