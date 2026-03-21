#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Welcome to the Open Source Philosophy Generator."
echo "Please answer the following three questions:"
echo "------------------------------------------------"

# Capture user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you in computing? " FREEDOM
read -p "3. Name one app or tool you would build and share freely: " BUILD

CURRENT_DATE=$(date +'%d %B %Y')
OUTPUT_FILE="manifesto_$(whoami).txt"

# Demonstrating the concept of an alias via comment:
# If I ran 'alias manifest="cat $OUTPUT_FILE"' I could read this quickly later.

# Compose the paragraph and write to file using redirection
echo "--- My Open Source Manifesto ---" > "$OUTPUT_FILE"
echo "Date Generated: $CURRENT_DATE" >> "$OUTPUT_FILE"
echo "Author: $(whoami)" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "Every day, I rely on open foundations and tools like $TOOL to navigate the digital world. To me, the absolute core of the open-source philosophy is $FREEDOM. If I have the opportunity to contribute my skills to this global ecosystem, I would choose to build and share $BUILD so that future developers might benefit from my work, just as I stand on the shoulders of the giants before me." >> "$OUTPUT_FILE"

echo "------------------------------------------------"
echo "SUCCESS: Your manifesto has been saved to $OUTPUT_FILE"
echo "Here is the final generated output:"
echo "------------------------------------------------"
# Read the file back to the user
cat "$OUTPUT_FILE"
