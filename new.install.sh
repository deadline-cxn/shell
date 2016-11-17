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

echo "New install script for $distro $codebase"
echo "======================================================================================="

#sudo echo 'parson ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
#sudo echo 'sparson ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

# sudo apt-get update

# MISC NEW INSTALL PROGRAMS
sudo apt-get install guake terminator mc sshfs gparted -y
sudo apt-get install gimp youtube-dl -y

# LAMP STUFF
sudo apt-get install apache2 mysql-server php5 -y
sudo apt-get install phpmyadmin -y
sudo apt-get install apache2-mpm-prefork apache2-utils -y
sudo apt-get install libapache2-mod-php5 libapr1 libaprutil1 -y
sudo apt-get install libdbd-mysql-perl libdbi-perl libnet-daemon-perl -y
sudo apt-get install libplrpc-perl libpq5 mysql-client-5.5 mysql-common -y
sudo apt-get install php5-gd php5-mysql php5-imagick p7zip-full -y
sudo apt-get install wkhtmltopdf pev unadf xdms unace -y

# ZSH
sudo apt-get install zsh -y
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
    sudo apt-get install codelite wxcrafter -y
fi

# GIT / SUBVERSION
if [ -f "/usr/bin/git" ]; then
    echo "Git already installed, skipping"
    echo "======================================================================================="
else
    sudo apt-get install git -y
fi
git config --global push.default matching
git config --global user.name "Seth Parson"
git config --global user.email "seth@parson.email"

if [ -f "/usr/bin/svn" ]; then
    echo "Subversion already installed, skipping"
    echo "======================================================================================="
else
    sudo apt-get install subversion -y
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
    sudo apt-get install oracle-java7-installer -y
    sudo apt-get install oracle-java7-set-default -y
fi

# OTHER DEV STUFF
sudo apt-get install python2.7 -y
sudo apt-get install python3.2 -y
sudo apt-get install python-setuptools -y
sudo apt-get install python-dev -y
sudo apt-get install lua5.2 -y

# OTHER STUFF
sudo apt-get install toilet nmap docky htop screenfetch openssh-server -y

# ANSIBLE
git clone https://github.com/ansible/ansible.git ~/ansible --recursive
cd ~/ansible
chmod +x ~/ansible/setup.py
sudo ~/ansible/setup.py build
sudo ~/ansible/setup.py install

echo "======================================================================="
sudo apt-get upgrade
sudo apt-get -f install -y
