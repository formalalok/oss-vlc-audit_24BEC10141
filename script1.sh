#!/bin/bash
# Script 1: System Identity Report
# Author: Alok Kumar
# Course: Open Source Software

# --- Variables
STUDENT_NAME="Alok Kumar"
SOFTWARE_CHOICE="VLC Media Player"

# System info
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
# Extracting the pretty name of the distro from the os-release file
DISTRO=$(cat /etc/os-release | grep "^PRETTY_NAME" | cut -d '"' -f 2)
CURRENT_DATE=$(date +"%A, %d %B %Y %T")

# --- Display
echo "======================================"
echo "         The Open Source Audit        "
echo "======================================"
echo "Student : $STUDENT_NAME"
echo "Software: $SOFTWARE_CHOICE"
echo "======================================"
echo "OS/Distro: $DISTRO"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home Dir : $HOME"
echo "Uptime   : $UPTIME"
echo "Date     : $CURRENT_DATE"
echo "License  : This underlying Linux OS kernel is protected by the GPL v2 open-source license."
echo "======================================"
