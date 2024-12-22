#!/bin/bash

process_file() {
    local file="$1"
    
    # Skip index files and non-markdown files
    if [[ "$(basename "$file")" == "index.md" ]] || [[ ! "$file" =~ \.md$ ]]; then
        return
    fi
    
    # Extract the YAML front matter
    yaml_content=$(sed -n "/^---$/,/^---$/p" "$file")
    
    # Debug: Show file being processed
    echo "Processing file: $file"
    
    if echo "$yaml_content" | grep -q "^[[:space:]]*- book$"; then
        echo "Found book tag in $file"
        mv "$file" "content/Book Notes/$(basename "$file")"
        echo "Moved $(basename "$file") to Book Notes"
    elif echo "$yaml_content" | grep -q "^[[:space:]]*- article$"; then
        echo "Found article tag in $file"
        mv "$file" "content/Articles/$(basename "$file")"
        echo "Moving $(basename "$file") to Articles"
    else
        echo "No matching tags, moving to Second Brain"
        mv "$file" "content/Second Brain/$(basename "$file")"
        echo "Moving $(basename "$file") to Second Brain"
    fi
}

# Process all markdown files from the website directory
find website -type f -name "*.md" | while read -r file; do
    process_file "$file"
done

# Print summary
echo "=== Organization Summary ==="
echo "Articles: $(find content/Articles -type f ! -name "index.md" | wc -l) files"
echo "Book Notes: $(find content/Book Notes -type f ! -name "index.md" | wc -l) files"
echo "Second Brain: $(find content/Second Brain -type f ! -name "index.md" | wc -l) files"

# List remaining files in website directory (should only be index.md files)
echo "=== Remaining files in website directory ==="
find website -type f -name "*.md" | sort

