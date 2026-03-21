#!/bin/bash
# Script 4: Log File Analyzer
# Usage example: ./script4.sh /var/log/syslog error

# Accept arguments or set defaults
LOGFILE=${1:-"/var/log/syslog"}
KEYWORD=${2:-"error"}
COUNT=0

# Do-while style retry if the file is missing or empty
while [ ! -s "$LOGFILE" ] || [ ! -r "$LOGFILE" ]; do
    echo "Cannot read $LOGFILE. It may require sudo or does not exist."
    read -p "Please enter a valid, readable log file path: " LOGFILE
done

echo "Analyzing $LOGFILE for the keyword: '$KEYWORD'..."

# Read file line by line
while IFS= read -r LINE; do
    # If the line contains the keyword (case insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "========================================="
echo "Result: Keyword '$KEYWORD' found $COUNT times."
echo "========================================="
echo "Showing the last 5 matching log entries:"
# Print the last 5 matching lines using grep and tail
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
