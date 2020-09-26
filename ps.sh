#!/bin/bash

# code

echo '  '
read -r -p "Are You Sure? [Y/n] " input

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
cd PhoneSploit
python2 main_linux.py
