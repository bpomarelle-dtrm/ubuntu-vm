#add repo for atom
sudo apt-get -y install wget
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update

# Install basic env and dev tools

sudo apt-get  --assume-yes install htop zsh rxvt-unicode terminator
sudo apt-get  --assume-yes install git git-flow subversion
sudo apt-get  --assume-yes install curl
sudo apt-get  --assume-yes install vim nano atom

#install of phpstorm
sudo apt-get  --assume-yes install snapd snapd-xdg-open
sudo snap install phpstorm --classic

# libreoffice
# docker
# vagrant
#i3

#___________________________________________________
#
#Configure dev env
#___________________________________________________

mkdir ~/workspace_shared
sudo mount -t vboxsf -o uid=$UID,gid=$(id -g) workspace ~/workspace_shared
