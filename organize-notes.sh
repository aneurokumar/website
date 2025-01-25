#!/bin/bash

process_file() {
    local file="$1"
    
    if [[ "$(basename "$file")" == "index.md" ]] || [[ ! "$file" =~ \.md$ ]]; then
        return
    fi
    
    yaml_content=$(sed -n "/^---$/,/^---$/p" "$file")
    echo "Processing file: $file"
    
    if echo "$yaml_content" | grep -q "^[[:space:]]*- book$"; then
        mv "$file" "content/Book Notes/$(basename "$file")"
        echo "Moved $(basename "$file") to Book Notes"
    elif echo "$yaml_content" | grep -q "^[[:space:]]*- article$"; then
        mv "$file" "content/Articles/$(basename "$file")"
        echo "Moving $(basename "$file") to Articles"
    else
        mv "$file" "content/Second Brain/$(basename "$file")"
        echo "Moving $(basename "$file") to Second Brain"
    fi
}

find content -type f -name "*.md" | while read -r file; do
    process_file "$file"
done

echo "=== Organization Summary ==="
echo "Articles: $(find content/Articles -type f ! -name "index.md" | wc -l) files"
echo "Book Notes: $(find "content/Book Notes" -type f ! -name "index.md" | wc -l) files"
echo "Second Brain: $(find "content/Second Brain" -type f ! -name "index.md" | wc -l) files"

