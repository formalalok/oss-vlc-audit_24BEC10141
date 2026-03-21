#!/bin/bash
# Script 3: Disk and Permission Auditor

# Array of critical system directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "============================="
echo "   Directory Audit Report    "
echo "============================="

# Loop through the array
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions (field 1), user (field 3), and group (field 4)
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Extract human-readable size
        SIZE=$(df -h "$DIR" | awk 'NR==2 {print $4}')
        
        echo "Directory: $DIR"
        echo "  -> Permissions & Owner: $PERMS"
        echo "  -> Available Space: $SIZE"
        echo "-----------------------------"
    else
        echo "Directory $DIR does not exist on this system."
    fi
done

# Check specific VLC configuration directory
VLC_CONF="$HOME/.config/vlc"
echo "Auditing Software Specific Directory..."
if [ -d "$VLC_CONF" ]; then
    VLC_PERMS=$(ls -ld "$VLC_CONF" | awk '{print $1, $3}')
    echo "VLC Config ($VLC_CONF) is present."
    echo "  -> Permissions & Owner: $VLC_PERMS"
else
    echo "VLC config directory not found (has VLC been launched by this user yet?)."
fi
