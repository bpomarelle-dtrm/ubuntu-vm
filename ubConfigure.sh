# add repo for atom
sudo apt-get -y install wget
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update

# install basic env and dev tools
sudo apt-get -y install htop zsh rxvt-unicode terminator \
git git-flow subversion \
install curl \
vim nano atom

# install of phpstorm
sudo apt-get -y install snapd snapd-xdg-open
sudo snap install phpstorm --classic

# libreoffice
sudo snap install libreoffice

# docker (I approximatively copied and pasted the official instructions of docker)
sudo apt-get remove -y docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
#use " disco " if " eoan " (19.10) doesn't work 
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
#installation of docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo groupadd docker
sudo gpasswd -a $USER docker


# vagrant
#virtualbox is mandatory
sudo apt install virtualbox
sudo apt install vagrant

#i3

#___________________________________________________
#
# Configure dev env
#___________________________________________________

mkdir ~/workspace_shared
sudo mount -t vboxfs -o uid=$UID,gid=$(id -g) workspace ~/workspace_shared
