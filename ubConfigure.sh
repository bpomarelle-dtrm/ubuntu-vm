#add repo for atom
sudo add-apt-repository ppa:webupd8team/atom
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
