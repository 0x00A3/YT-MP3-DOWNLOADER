#!/bin/sh

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root"
    exit
fi

clear
case "$OSTYPE" in
  linux*)   echo `apt-get install youtube-dl` ;;
  msys*)    echo `pip install youtube-dl` ;;
esac

clear
BLUE=`tput setaf 6`
WHITE=`tput setaf 7`
reset=`tput sgr0`

echo "${WHITE}-----------------------------------------------------------------------------------"
echo "${BLUE}                             [+] Made By Birdlinux [+]                               "
echo "${WHITE}-----------------------------------------------------------------------------------"
read -p "URL :" url
echo "${WHITE}-----------------------------------------------------------------------------------"
youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" $url
echo "${WHITE}-----------------------------------------------------------------------------------"
echo "${WHITE}-----------------------------------------------------------------------------------"
echo "${BLUE}                                 [+] Installed [+]                               "
echo "${WHITE}-----------------------------------------------------------------------------------"
