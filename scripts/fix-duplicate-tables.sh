#!/bin/bash

# Script to fix duplicate table tags in _index.md
# Usage: ./fix-duplicate-tables.sh

INDEX_FILE="content/_index.md"

if [ ! -f "$INDEX_FILE" ]; then
    echo "Error: $INDEX_FILE not found!"
    exit 1
fi

echo "Fixing duplicate table tags in $INDEX_FILE..."

# Create backup
cp "$INDEX_FILE" "${INDEX_FILE}.backup"

# Remove duplicate table tags, keeping only the first one
awk '
BEGIN { 
    table_found = 0 
}
/<table class="pod-table" id="summary-table">/ { 
    if (table_found == 0) {
        table_found = 1
        print
    }
    next
}
{ print }
' "$INDEX_FILE" > "${INDEX_FILE}.tmp"

# Replace original with cleaned version
mv "${INDEX_FILE}.tmp" "$INDEX_FILE"

echo "Fixed! Backup saved as ${INDEX_FILE}.backup"
echo "Duplicate table tags removed from $INDEX_FILE" 