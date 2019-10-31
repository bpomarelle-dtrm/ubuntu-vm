# ubuntu-vm

Ubuntu-vm is a set of scripts that intends to provide a complete, work-ready ubuntu vm

## 1- Install Virtualbox and the extention pack

## 2 - Create the Virtual machine
### 2.1 - Download Ubuntu
### 2.2 - Install
### 2.3 - boot the virtual machine and check if it's working properly
### 2.4 - go to Parametres > devices and clic the add button. share your workspace folder

## 3 - Optimisation of the VM
### 3.1 Shutdown the VM, go to "Parametres" in virtualbox
### 3.2 Go To "systeme" > change CPU nbr to 2
### 3.3 Go To "Affichage", set video memory to max, screen to 2, change graphic controller to VBoxSGVA


## 4 - software installation
### Set up SSH keys
```bash
ssh-keygen -t rsa -b 4096 -C "<your-mail>@determine.com"

# if it's necessary, add a private key that's already generated
ssh-add ~/.ssh/id_rsa 

# don't forget to fill the private key in github
cat ~/.ssh/id_rsa.pub
```

### Set up Git
```bash
git config --global user.email "<your-mail>@determine.com"
git config --global user.name "Your Name"
```

### Set up ZSH (not necessary)
```bash
sudo apt-get install -y zsh

# Oh my ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# ZSH auto-suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

echo "source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
```