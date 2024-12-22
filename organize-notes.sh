#!/bin/bash

process_file() {
    local file="$1"
    local base_dir="website/content"
    
    # Skip non-markdown files and index files
    if [[ ! "$file" =~ \.md$ ]] || [[ "$(basename "$file")" == "index.md" ]]; then
        return
    fi
    
    # Read the YAML front matter and check tags
    if grep -qP '(?s)^---.*?tag:\s*.*\bbook\b.*?---' "$file"; then
        destination="${base_dir}/Book Notes/$(basename "$file")"
        echo "Moving $(basename "$file") to Book Notes"
    elif grep -qP '(?s)^---.*?tag:\s*.*\barticle\b.*?---' "$file"; then
        destination="${base_dir}/Articles/$(basename "$file")"
        echo "Moving $(basename "$file") to Articles"
    else
        destination="${base_dir}/Second Brain/$(basename "$file")"
        echo "Moving $(basename "$file") to Second Brain"
    fi
    
    # Move the file
    cp "$file" "$destination"
}

# Process all markdown files
find website -type f -name "*.md" | while read -r file; do
    process_file "$file"
done

# Print summary
echo "=== Organization Summary ==="
echo "Articles: $(find website/content/Articles -type f ! -name "index.md" | wc -l) files"
echo "Book Notes: $(find website/content/Book Notes -type f ! -name "index.md" | wc -l) files"
echo "Second Brain: $(find website/content/Second Brain -type f ! -name "index.md" | wc -l) files"

