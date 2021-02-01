#!/bin/sh
clear
BLUE=`tput setaf 6`
WHITE=`tput setaf 7`
reset=`tput sgr0`
apt-get install youtube-dl
pip3 install youtube-dl
clear
echo -e "${WHITE}-----------------------------------------------------------------------------------"
echo -e "${BLUE}                             [+] Made By Birdlinux [+]                               "
echo -e "${WHITE}-----------------------------------------------------------------------------------"
read -p "URL :" url
echo -e "${WHITE}-----------------------------------------------------------------------------------"
youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" $url
echo -e "${WHITE}-----------------------------------------------------------------------------------"
clear
echo -e "${WHITE}-----------------------------------------------------------------------------------"
echo -e "${BLUE}                                 [+] Installed [+]                               "
echo -e "${WHITE}-----------------------------------------------------------------------------------"
