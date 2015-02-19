sudo echo 'parson ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
sudo echo 'sparson ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
sudo apt-get install guake -y
sudo apt-get install mc -y
sudo apt-get install git-y
sudo apt-get install sshfs -y
sudo apt-get install zsh -y
#sudo add-apt-repository ppa:pasgui/ppa ; # codeblocks
#sudo apt-get update
#sudo apt-get install codeblocks -y
echo "Enter password to change shell to zsh "
chsh -s /bin/zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/shell/.zshrc ~/.zshrc
cd ~/Downloads
sudo apt-get install libcurl3 -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
mkdir ~/sites
mkdir ~/sites/area56
mkdir ~/sites/defectivemind.com
mkdir ~/sites/3dnetlabs.info
git config --global user.name "Seth Parson"
git config --global user.email defectiveseth@gmail.com


