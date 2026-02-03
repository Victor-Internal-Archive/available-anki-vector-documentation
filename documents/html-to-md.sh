#!/bin/bash

# HTML to Markdown Recursive Converter (works with or without .html extension)
# Usage: ./convert_html_to_md.sh [directory]

# Set the target directory (default to current directory)
TARGET_DIR="${1:-.}"

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo "Error: pandoc is not installed."
    echo "Install it with: sudo apt-get install pandoc (Debian/Ubuntu)"
    echo "or: sudo yum install pandoc (RedHat/CentOS)"
    echo "or: brew install pandoc (macOS)"
    exit 1
fi

# Check if target directory exists
if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: Directory '$TARGET_DIR' does not exist."
    exit 1
fi

echo "Converting HTML files to Markdown in: $TARGET_DIR"
echo "Searching for HTML files (with or without .html extension)..."
echo "================================================"

# Counter for converted files
converted=0
failed=0
skipped=0

# Find all files recursively and check if they're HTML
while IFS= read -r -d '' file; do
    # Check if file is HTML by looking at content
    if file -b --mime-type "$file" | grep -q "text/html"; then
        is_html=true
    elif head -n 1 "$file" 2>/dev/null | grep -qi "<!doctype html\|<html"; then
        is_html=true
    else
        is_html=false
    fi
    
    if [ "$is_html" = true ]; then
        # Generate output filename
        if [[ "$file" == *.html ]]; then
            md_file="${file%.html}.md"
        elif [[ "$file" == *.htm ]]; then
            md_file="${file%.htm}.md"
        else
            md_file="${file}.md"
        fi
        
        # Skip if .md already exists
        if [ -f "$md_file" ]; then
            echo "Skipping (already exists): $file"
            ((skipped++))
            continue
        fi
        
        echo "Converting: $file"
        
        # Convert using pandoc with options to clean up output
        # --wrap=none prevents unwanted line breaks
        # --reference-links puts links at bottom
        # -t markdown_strict for cleaner output
        if pandoc "$file" -f html -t markdown_strict+pipe_tables-raw_html \
            --wrap=none \
            --strip-comments \
            -o "$md_file" 2>/dev/null; then
            
            # Post-process to clean up common issues
            # Remove excessive blank lines, clean up formatting
            sed -i.bak \
                -e '/^:::.*$/d' \
                -e 's/\[\]{\..*}//g' \
                -e 's/\[Toggle.*\]{\.sr-only}//g' \
                -e 's/\[Toggle Navigation\]//g' \
                -e 's/\[Toggle Search\]//g' \
                -e '/\[!\[Digital Dream Labs Knowledge Base\]/,/^-   \[Contact\]/d' \
                -e '/^### Categories$/,/^© \[Digital Dream Labs\]/d' \
                -e 's/\[\](javascript:[^)]*)[^]]*//g' \
                -e '/^No results found$/d' \
                -e '/^\s*$/N;/^\n$/D' \
                "$md_file" 2>/dev/null
            
            # Remove backup file
            rm -f "${md_file}.bak"
            
            echo "  ✓ Created: $md_file"
            ((converted++))
        else
            echo "  ✗ Failed to convert: $file"
            ((failed++))
        fi
    fi
done < <(find "$TARGET_DIR" -type f -print0)

# Print summary
echo ""
echo "================================================"
echo "Conversion complete!"
echo "Successfully converted: $converted files"
echo "Failed: $failed files"
echo "Skipped (already converted): $skipped files"
echo ""
echo "Note: Converted files have been cleaned to remove navigation"
echo "and other non-content elements. Review output for quality."
