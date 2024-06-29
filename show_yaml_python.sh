# Check if a file path argument is provided
if [ $# -eq 0 ]; then
    echo "Error: No file path provided."
    echo "Usage: $0 <file_path>"
    exit 1
fi

file_path=$1

# Check if the file exists
if [ ! -f "$file_path" ]; then
    echo "Error: File not found: $file_path"
    exit 1
fi

python3 -c 'import yaml, pprint; pprint.pprint(yaml.load(open("'"$file_path"'").read(), Loader=yaml.FullLoader))'
