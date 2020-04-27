#!/bin/bash
# Install common programs and stuff by Seth

DISTRO=$(cat /etc/*rel* | grep "DISTRIB_ID=" | sed "s/DISTRIB_ID=//" | tr '[:upper:]' '[:lower:]')
CODEBASE=$(cat /etc/*rel* | grep "DISTRIB_CODENAME=" | sed "s/DISTRIB_CODENAME=//")

if [ -z "$DISTRO" ]; then
   echo "DISTRO not defined from DISTRIB_ID, checking PRETTY_NAME:";

   d=$(cat /etc/*-release | grep "PRETTY_NAME=" | sed "s/PRETTY_NAME=//" | sed "s/\"//g")
   CODEBASE=$(echo $d | sed "s/[ a-Z0-9.\/]*(//" | sed "s/)//")
   DISTRO=$(echo $d | sed "s/ GNU\/Linux[ a-Z0-9.]*([a-Z0-9]*)//" | tr '[:upper:]' '[:lower:]')

   if [ -z "$DISTRO" ]; then
       echo "Can not determine linux DISTRO and CODEBASE";
       exit
   fi
fi

echo "New install script for [$DISTRO][$CODEBASE]"
echo "======================================================================================="

case "$DISTRO" in
  *centos*)
     echo " CentOS detected... Adding EPEL repositories. "
     DISTRO='centos'
     sudo yum install epel-release
     sudo yum update
     ;;
  *)
     sudo apt-get update
     ;;
esac

function install {
  echo $DISTRO $1
  case "$DISTRO" in
    *centos*)
      sudo yum install -y $1
      ;;
    *)
      sudo apt-get install -y $1
      case "$?" in
          100)
            echo "Not found"
            ;;
          0)
            ;;
      esac
      ;;
esac
}

case "$DISTRO" in
  *centos*)
     install httpd
     install p7zip
     install p7zip-plugins
     install clang
     install libssh
     install xterm
     ;;
  *)
#     install toilet
     install screenfetch
#     install apache2
     install p7zip-full
#     install mysql-server
#     install apache2-utils
#     install mysql-client
#     install mysql-common
     install pev
     install unadf
     install xdms
     install unace
     ;;
esac

# MISC NEW INSTALL PROGRAMS
install php
install python2.7
install python3.2
install python-setuptools
install python-dev
install lua5.2
install screen
install samba
install guake
install terminator
install mc
install sshfs
install gparted
install gimp
install nmap
install htop
install openssh-server

#install youtube-dl
#install phpmyadmin
#install wkhtmltopdf
#sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
#sudo chmod a+rx /usr/local/bin/youtube-dl

echo "======================================================================================="

git config --global push.default matching
git config --global user.name  "Seth Parson aka Deadline"
git config --global user.email "seth.parson.71@gmail.com"

echo "UPDATE/UPGRADE packages"
echo "======================================================================================="

case "$DISTRO" in
  *centos*)
     sudo yum update
     sudo yum upgrade -y
     ;;
  *)
     sudo apt-get update
     sudo apt-get upgrade -y
     sudo apt-get -f install -y
     ;;
esac

echo "======================================================================================="
echo "    ***   SUDO FILE ADD: sparson ALL=(ALL) NOPASSWD: ALL    ***"
echo "======================================================================================="
echo "ALL DONE"
