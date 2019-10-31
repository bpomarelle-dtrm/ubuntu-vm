# ubuntu-vm

Ubuntu-vm is a set of scripts that intends to provide a complete, work-ready ubuntu vm

## 1- Install Virtualbox and the extention pack
Follow this officialy link [VirtualBox](https://www.virtualbox.org/wiki/Downloads) to download Virtualbox and the extension pack.

Be careful to install the same version of Virtualbox software and the extension pack. Actually the version is "6.0.14".

To install VirtualBox for windows, click to *Windows hosts* below `VirtualBox {version} platform packages`.

To install the extension pack, click to *All supported platforms* below `VirtualBox {version} Oracle VM VirtualBox Extension Pack`



## 2 - Create the Virtual machine
### 2.1 - Download Ubuntu
To download Ubuntu, follow one of this links 
- [Ubuntu 18.04 LTS](https://ubuntu.com/download/desktop/thank-you?country=&version=18.04.3&architecture=amd64)
- [Ubuntu 19.10](https://ubuntu.com/download/desktop/thank-you/?version=19.10&architecture=amd64)

### 2.2 - Install
#### Creation of your new machine
- Create a **new machine** and choose the name that you want
- Choose the **RAM allocation** that you want. If this vm is your environment work, move the cursor to the end of range :).
- Create **virtual hard drive** and choose **VDI type** that will be **dynamically allocated**.
- Then, choose the **hard drive size**. It's recommended to choose to have a lot of space if this vm is your environment work.
<br>=> The new machine is created!

#### Installation of Ubuntu
- Right-click on your machine and choose **normal boot**
- Insert your **Ubuntu ISO** that you downloaded (something like `ubuntu-19.10-desktop-amd64.iso`)
- Follow instructions => The installation must be very simple, because we have an hard drive. Just warning for the definition of password because the keyboard is "qwerty mode".
- At the end of installation, Ubuntu will ask that you press a touch to restart.
<br>=> Congratulations! Ubuntu is set up.


### 2.3 - Boot the virtual machine and check if it works properly


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