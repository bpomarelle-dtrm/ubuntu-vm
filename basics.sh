# install basic env and dev tools
sudo apt-get -y install wget htop zsh rxvt-unicode terminator \
git git-flow subversion \
install curl nano vim 

# add shared workspace
mkdir ~/workspace_shared
sudo mount -t vboxfs -o uid=$UID,gid=$(id -g) workspace ~/workspace_shared