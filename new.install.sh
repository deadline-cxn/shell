#!/bin/bash

distro=$(cat /etc/*-release | grep DISTRIB_ID | sed s/DISTRIB_ID=// | tr '[:upper:]' '[:lower:]')
codebase=$(cat /etc/*-release | grep DISTRIB_CODENAME | sed s/DISTRIB_CODENAME=//)

if [ -z "$distro" ]; then
   echo "DISTRO not defined from DISTRIB_ID, checking PRETTY_NAME:";

   d=$(cat /etc/*-release | grep "PRETTY_NAME=" | sed "s/PRETTY_NAME=//" | sed "s/\"//g")
   codebase=$(echo $d | sed "s/[ a-Z0-9.\/]*(//" | sed "s/)//")
   distro=$(echo $d | sed "s/ GNU\/Linux[ a-Z0-9.]*([a-Z0-9]*)//" | tr '[:upper:]' '[:lower:]')

   if [ -z "$distro" ]; then
       echo "Can not determine linux distro and codebase";
       exit
   fi
fi

case "$distro" in
  *centos*)
     echo " CentOS detected... Adding EPEL repositories. "
     distro='centos'
     sudo yum install epel-release
     sudo yum update
     ;;
  *)
     sudo apt-get update
     ;;
esac


echo "New install script for [$distro][$codebase]"
echo "======================================================================================="

function install {

  echo $distro $1

  case "$distro" in
    *centos*)
      sudo yum install -y $1
      ;;
    *)
      sudo apt-get install -y $1
      ;;
  esac
}


# MISC NEW INSTALL PROGRAMS
install guake
install terminator
install mc
install sshfs
install gparted
install gimp
install youtube-dl

# LAMP STUFF
install apache2
install mysql-server
install php5
install phpmyadmin
install apache2-mpm-prefork
install apache2-utils
install libapache2-mod-php5
install libapr1
install libaprutil1
install libdbd-mysql-perl
install libdbi-perl
install libnet-daemon-perl
install libplrpc-perl
install libpq5
install mysql-client-5.5
install mysql-common
install php5-gd
install php5-mysql
install php5-imagick
install p7zip-full
install wkhtmltopdf
install pev
install unadf
install xdms
install unace

# ZSH
install zsh
echo "Enter password to change shell to zsh "
chsh -s /bin/zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/shell/.zshrc ~/.zshrc

# GOOGLE CHROME
if [ -f "/usr/bin/google-chrome" ]; then
    echo "Google Chrome already installed, skipping dowload";
    echo "======================================================================================="

else
    cd ~/Downloads
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
fi

########################### DEVELOPMENT SECTION

# CODELITE
if [ -f "/usr/bin/codelite" ]; then
    echo "Codelite already installed, skipping"
    echo "======================================================================================="
else
    sudo apt-key adv --fetch-keys http://repos.codelite.org/CodeLite.asc
    sudo apt-add-repository "deb http://repos.codelite.org/$distro/ $codebase universe"
    sudo apt-get update
    install codelite
    install wxcrafter
fi

# GIT / SUBVERSION
if [ -f "/usr/bin/git" ]; then
    echo "Git already installed, skipping"
    echo "======================================================================================="
else
    install git
fi
git config --global push.default matching
git config --global user.name "Seth Parson"
git config --global user.email "seth@parson.email"

if [ -f "/usr/bin/svn" ]; then
    echo "Subversion already installed, skipping"
    echo "======================================================================================="
else
    install subversion
fi

# JAVA
if [ -f "/usr/bin/java" ]; then
    echo "Oracle Java already installed, skipping"
    echo "======================================================================================="
else
    sudo echo "deb http://ppa.launchpad.net/webupd8team/java/$distro $codebase main" | sudo tee /etc/apt/sources.list.d/webupd8team-java.list
    sudo echo "deb-src http://ppa.launchpad.net/webupd8team/java/$distro $codebase main" | sudo tee -a /etc/apt/sources.list.d/webupd8team-java.list
    sudo apt-key adv --keyserver "keyserver.$distro.com" --recv-keys EEA14886
    sudo apt-get update
    install openjdk-8-jre-headless
    #sudo apt-get install oracle-java8-set-default -y
fi

# OTHER DEV STUFF
install python2.7
install python3.2
install python-setuptools
install python-dev
install lua5.2

# OTHER STUFF
install toilet
install nmap
install docky
install htop
install screenfetch
install openssh-server

# ANSIBLE
if [ -f "~/ansible/setup.py.build" ]; then
  git clone https://github.com/ansible/ansible.git ~/ansible --recursive
  cd ~/ansible
  chmod +x ~/ansible/setup.py
  sudo ~/ansible/setup.py build
  sudo ~/ansible/setup.py install
fi

echo "======================================================================="
sudo apt-get upgrade
sudo apt-get -f install -y

echo 'sparson ALL=(ALL) NOPASSWD: ALL'
