#!/bin/bash

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
     install python2.7
     install python3.2
     install python-setuptools
     install python-dev
     install lua5.2
     install toilet
     install screenfetch
     install apache2
     install p7zip-full
     install mysql-server
     install apache2-utils
     install mysql-client
     install mysql-common
     install pev
     install unadf
     install xdms
     install unace
     ;;
esac

# MISC NEW INSTALL PROGRAMS
install screen
install open-vm-tools-desktop
install guake
install terminator
install mc
install sshfs
install gparted
install gimp
install youtube-dl
install nmap
install docky
install htop
install openssh-server
install phpmyadmin
install wkhtmltopdf

echo "======================================================================================="

# ZSH
if [ -f "../.oh-my-zsh/README.md" ]; then
    echo "ZSH already installed, skipping"
    echo "======================================================================================="
else
    echo "INSTALLING ZSH"
    echo "======================================================================================="
    install zsh
    echo "Enter password to change shell to zsh:"
    chsh -s /bin/zsh
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi
cp ~/shell/.zshrc ~/.zshrc

# GOOGLE CHROME
echo "======================================================================================="
if [ -f "/usr/bin/google-chrome" ]; then
    echo "Google Chrome already installed, skipping dowload";
    echo "======================================================================================="
else
    echo "INSTALLING Google Chrome"
    echo "======================================================================================="
    cd ~/Downloads
  case "$DISTRO" in
    *centos*)
       install redhat-lsb-core-4.1-27.el7.centos.1.x86_64
       install libXScrnSaver-devel-1.2.2-6.1.el7.x86_64
       rm ~/Downloads/google-chrome-stable_current_x86_64.rpm
       wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
       sudo rpm -Uvh google-chrome-stable_current_x86_64.rpm
       ;;
    *)
       rm ~/Downloads/google-chrome-stable_current_amd64.deb
       wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
       sudo dpkg -i google-chrome-stable_current_amd64.deb
       ;;
  esac
    cd ~/shell
fi

# Codelite
echo "======================================================================================="
if [ -f "/usr/bin/codelite" ]; then
    echo "Codelite already installed, skipping"
    echo "======================================================================================="
else
    echo "INSTALLING Codelite"
    echo "======================================================================================="

  case "$DISTRO" in
    *centos*)
       sudo rpm --import https://repos.codelite.org/CodeLite.asc
       #sudo rpm -Uvh https://repos.codelite.org/rpms-11.0/fedora/codelite-11.0-1.fc26.x86_64.rpm
       ;;
    *) 
       sudo apt-key adv --fetch-keys http://repos.codelite.org/CodeLite.asc
       sudo apt-add-repository "deb http://repos.codelite.org/$DISTRO/ $CODEBASE universe"
       sudo apt-get update
       install codelite
       install wxcrafter
       ;;
  esac
fi

# GIT / SUBVERSION
echo "======================================================================================="
if [ -f "/usr/bin/git" ]; then
    echo "Git already installed, skipping"
    echo "======================================================================================="
else
    echo "INSTALLING Git"
    echo "======================================================================================="
    install git
fi
git config --global push.default matching
git config --global user.name "Seth Parson"
git config --global user.email "seth@parson.email"

if [ -f "/usr/bin/svn" ]; then
    echo "Subversion already installed, skipping"
    echo "======================================================================================="
else
    echo "INSTALLING Subversion"
    echo "======================================================================================="
    install subversion
fi

# JAVA
echo "======================================================================================="
if [ -f "/usr/bin/java" ]; then
    echo "Oracle Java already installed, skipping"
    echo "======================================================================================="
else
    echo "INSTALLING Oracle Java"
    echo "======================================================================================="
    sudo echo "deb http://ppa.launchpad.net/webupd8team/java/$DISTRO $CODEBASE main" | sudo tee /etc/apt/sources.list.d/webupd8team-java.list
    sudo echo "deb-src http://ppa.launchpad.net/webupd8team/java/$DISTRO $CODEBASE main" | sudo tee -a /etc/apt/sources.list.d/webupd8team-java.list
    sudo apt-key adv --keyserver "keyserver.$DISTRO.com" --recv-keys EEA14886
    sudo apt-get update
    install openjdk-8-jre-headless
    #sudo apt-get install oracle-java8-set-default -y
fi

# ANSIBLE
#echo "======================================================================================="
#if [ -f "../ansible/setup.py" ]; then
#    echo "Ansible already installed, skipping"
#    echo "======================================================================================="
#else
#    echo "INSTALLING Ansible"
#    echo "======================================================================================="
#    git clone https://github.com/ansible/ansible.git ~/ansible --recursive
#    cd ~/ansible
#    chmod +x ~/ansible/setup.py
#    sudo ~/ansible/setup.py build
#    sudo ~/ansible/setup.py install
#fi

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
