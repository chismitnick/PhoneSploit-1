#!/bin/bash

# Coded by github.com/imvijayps
# Copy with Credits
# code

echo '  '
read -r -p "Do you really want to install PhoneSploit tool [Y/n]" input

case $input in

    [yY][eE][sS]|[yY])

 echo "You have choose to continue the process. Have Some Patience..."
continue
  ;;

    [nN][oO]|[nN])

 echo "You cancelled the process. Thanks for using this tool"

exit
  ;;

    *)

 echo "Invalid input... Aborted"

 exit 1

 ;;

esac

pkg update -y
pkg upgrade -y
pkg install unzip -y
pkg install git -y
git clone https://github.com/MasterDevX/Termux-ADB.git
cd Termux-ADB
chmod +x InstallTools.sh
./InstallTools.sh
cd
cd PhoneSploit
unzip PhoneSploit.zip
rm PhoneSploit.zip
echo "   "
echo "Now enter PhoneSploit directory by cd Phonesploit and run python2 main_linux.py "
