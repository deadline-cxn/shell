distro=$(cat /etc/*-release | grep DISTRIB_ID | sed s/DISTRIB_ID=// | tr '[:upper:]' '[:lower:]')
codebase=$(cat /etc/*-release | grep DISTRIB_CODENAME | sed s/DISTRIB_CODENAME=//)

echo "New install script for $distro $codebase"
echo "======================================================================="

#sudo echo 'parson ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
#sudo echo 'sparson ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
sudo apt-get update
sudo apt-get install guake terminator mc sshfs -y
sudo apt-get install python2.7 python3.4 php5 apache2 mysql-server -y

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

# CODELITE
sudo apt-key adv --fetch-keys http://repos.codelite.org/CodeLite.asc
sudo apt-add-repository "deb http://repos.codelite.org/$distro/ $codebase universe"
sudo apt-get update
sudo apt-get install codelite wxcrafter -y

# GIT
sudo apt-get install git -y
git config --global push.default simple
git config --global user.name "Seth Parson"
git config --global user.email "seth@parson.email"

echo "======================================================================="
