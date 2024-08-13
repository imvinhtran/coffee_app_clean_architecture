#!/bin/bash

# Get the directory where the script is located
SCRIPT_DIR="$(dirname "$0")"
# Relative dir
ASSETS_RELATIVE_DIR="../../app/assets/svg"
# Set the assets directory
ASSETS_DIR="$SCRIPT_DIR/$ASSETS_RELATIVE_DIR"

# Initialize the output string for the JavaScript array
js_array="let sources =["

# Iterate over all SVG files in the assets directory
for file in "$ASSETS_DIR"/*.svg; do
  # Check if the glob pattern actually matches any files
  if [ -e "$file" ]; then
    # Get the file name without the directory part
    filename=$(basename "$file")
    # Append the filename to the output string, wrapped in quotes
    js_array+="'$ASSETS_RELATIVE_DIR/$filename', "
  fi
done

# Remove the trailing comma and space, and add the closing bracket
js_array=${js_array%, }
js_array+="];"

# Read the template.html file
template_file="$SCRIPT_DIR/template.html"
new_file="$SCRIPT_DIR/index.html"

# Check if the template file exists
if [ ! -f "$template_file" ]; then
  echo "template.html not found in $SCRIPT_DIR"
  exit 1
fi

# Delete the index.html file if it exists
if [ -f "$new_file" ]; then
  rm "$new_file"
fi

# Replace "// replace there" with the JavaScript array and write to index.html
sed "s|// replace there|$js_array|g" "$template_file" > "$new_file"

# Open the newly created index.html in the default browser
if command -v xdg-open > /dev/null; then
  xdg-open "$new_file"
elif command -v open > /dev/null; then
  open "$new_file"
elif command -v start > /dev/null; then
  start "" "$new_file"
else
  echo "Could not detect the default browser. Please open $new_file manually."
fi

echo "index.html has been created with the replacements and opened in the default browser."
