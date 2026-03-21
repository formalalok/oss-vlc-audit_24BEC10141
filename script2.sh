#!/bin/bash
# Script 2: FOSS Package Inspector

# Change this if testing other software
PACKAGE="vlc"

# Check if package is installed using dpkg (standard for Ubuntu/Mint/Debian)
if dpkg -l | grep -qw "^ii.*$PACKAGE"; then
    echo "SUCCESS: $PACKAGE is currently installed on this system."
    echo "--- Package Details ---"
    # Extract version and maintainer info
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer'
else
    echo "WARNING: $PACKAGE is NOT installed on this system."
fi

echo "--- Philosophical Context ---"
# Case statement providing context based on package name
case $PACKAGE in
    apache2) 
        echo "Apache: The web server that essentially built the open internet." ;;
    mysql-server) 
        echo "MySQL: Open source at the heart of millions of web applications." ;;
    firefox) 
        echo "Firefox: A non-profit browser fighting to keep the web open." ;;
    vlc) 
        echo "VLC: A universal media player born in a Paris university, now serving the globe." ;;
    *) 
        echo "Unknown package, but it is likely built on open-source foundations." ;;
esac
