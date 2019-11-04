# proper support for html5 Video
sudo apt install ffmpeg

# install basic env and dev tools
sudo apt -y install wget htop rxvt-unicode terminator \
git git-flow subversion \
curl vim nano tree

# mount the windows folder in linux
mkdir ~/workspace_shared
sudo mount -t vboxfs -o uid=$UID,gid=$(id -g) workspace ~/workspace_shared
