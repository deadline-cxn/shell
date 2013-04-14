sudo echo 'parson ALL=(ALL) NOPASSWD: ALL\n' >> /etc/sudoers
sudo apt-get install guake -y
sudo apt-get install mc -y
sudo apt-get install git-y
sudo apt-get install sshfs -y
sudo apt-get install zsh -y
chsh -s /bin/zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/shell/.zshrc ~/.zshrc
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
mkdir ~/shell
cd ~/shell
git init
git pull git@github.com:sethcoder/shell.git
mkdir ~/sites
mkdir ~/sites/area56
mkdir ~/sites/defectivemind.com
mkdir ~/sites/3dnetlabs.info
mkdir ~/sites/sarahparsonphotography.com
