distro=$(cat /etc/*-release | grep DISTRIB_ID | sed s/DISTRIB_ID=// | tr '[:upper:]' '[:lower:]')
codebase=$(cat /etc/*-release | grep DISTRIB_CODENAME | sed s/DISTRIB_CODENAME=//)

echo "New install script for $distro $codebase"
echo "======================================================================="

#sudo echo 'parson ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
#sudo echo 'sparson ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

sudo apt-get update

# MISC NEW INSTALL PROGRAMS
sudo apt-get install guake terminator mc sshfs gparted -y
sudo apt-get install gimp youtube-dl -y

# LAMP STUFF
sudo apt-get install apache2 mysql-server php5 phpmyadmin -y


# ZSH
sudo apt-get install zsh -y
echo "Enter password to change shell to zsh "
chsh -s /bin/zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/shell/.zshrc ~/.zshrc

# GOOGLE CHROME
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

########################### DEVELOPMENT SECTION

# CODELITE
sudo apt-key adv --fetch-keys http://repos.codelite.org/CodeLite.asc
sudo apt-add-repository "deb http://repos.codelite.org/$distro/ $codebase universe"
sudo apt-get update
sudo apt-get install codelite wxcrafter -y

# GIT / SUBVERSION
sudo apt-get install git -y
git config --global push.default simple
git config --global user.name "Seth Parson"
git config --global user.email "seth@parson.email"
sudo apt-get install subversion -y

# JAVA
sudo echo "deb http://ppa.launchpad.net/webupd8team/java/$distro $codebase main" | sudo tee /etc/apt/sources.list.d/webupd8team-java.list
sudo echo "deb-src http://ppa.launchpad.net/webupd8team/java/$distro $codebase main" | sudo tee -a /etc/apt/sources.list.d/webupd8team-java.list
sudo apt-key adv --keyserver "keyserver.$distro.com" --recv-keys EEA14886
sudo apt-get update
sudo apt-get install oracle-java7-installer -y
sudo apt-get install oracle-java7-set-default -y

# OTHER DEV STUFF
sudo apt-get install python2.7 python3.4 ansible lua -y

echo "======================================================================="
