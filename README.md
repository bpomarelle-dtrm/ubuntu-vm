# ubuntu-vm

Ubuntu-vm is a set of scripts that intends to provide a complete, work-ready Ubuntu Virtual Machine

## 1- Install Virtualbox and the extention pack
Follow this official link [VirtualBox](https://www.virtualbox.org/wiki/Downloads) to download Virtualbox and the extension pack.

Ensure to install the right version of the extension pack, depending on your Virtualbox version.
The current version is "6.0.14".

To install VirtualBox for windows, click to *Windows hosts* below `VirtualBox {version} platform packages`.

To install the extension pack, click to *All supported platforms* below `VirtualBox {version} Oracle VM VirtualBox Extension Pack`



## 2 - Create the Virtual machine
### 2.1 - Download Ubuntu
To download Ubuntu, follow one of those links, depending on the Ubuntu version you want to use :
- [Ubuntu 18.04 LTS](https://ubuntu.com/download/desktop/thank-you?country=&version=18.04.3&architecture=amd64)
- [Ubuntu 19.10](https://ubuntu.com/download/desktop/thank-you/?version=19.10&architecture=amd64)

### 2.2 - Install

**If you're familiar with Virtualbox, you can pass 2.2. section**

#### Creation of your new machine
- Create a **new machine** and choose the name that you want
- Choose the **RAM allocation** that you want. If this vm is your environment work, move the cursor to the end of range :). 8Gb (8192Mo) should do the trick.
- Create **virtual hard drive** and choose **VDI type** that will be **dynamically allocated**.
- Then, choose the **hard drive size**. Ensure to set sufficient storage space depending on your usage. <br>
If later you want change the hard drive size, you must execute this command on Windows : 
```bash
cd "c:\Program Files\Oracle\VirtualBox"

VBoxManage modifyhd "C:\Users\pfarrugia\VirtualBox VMs\Ubuntu\Ubuntu.vdi" --resize 81920
```
<br>=> The new machine is created!

#### Installation of Ubuntu
- Right-click on your machine and choose **normal boot**
- Insert the **Ubuntu ISO** that you downloaded (something like `ubuntu-19.10-desktop-amd64.iso`)
- Follow instructions => The installation must be very simple, because we have an hard drive.
- **Be Carefull !** The informations you have to fill (name, password) are set using QWERTY keymap.
- For your User name, you should use the determine standard (first letter of first name + last name).
- At the end of installation, Ubuntu will ask you to press any key to restart.
<br>=> Congratulations! Ubuntu is set up.


### 2.3 - Boot the virtual machine and check if it works properly

## 3 - Optimisation of the VM
Open the **configuration panel** of your virtual machine while it's down.
### 3.1 Configure cpu
Go to **system>cpu**, set number of cpu to 2.
### 3.2 Configure Screens
Go to **dysplay>screen**, then:
- Set **video memory** to the max (usually 128Mb)
- Set the **number of screens** to what you want (at least 2)
- Set yout **graphic controller** to VBoxSGVA

### 3.3 Port forwarding
Go to **network>Interface1>"Avancé">port forwarding**.
- Set your vagrant http port forwarding: 192.168.10.10:80 -> 192.168.10.10:80
- Set your vagrant https port forwarding: 192.168.10.10:443 -> 192.168.10.10:443

### 3.4 Share folders
Go to **shared folders>add a shared folder**.
- Set folder path to *your_fullCore_path*
- Set folder name to "fullCore"
- Set automatic mount to true
- Set mount point to "fullCore"
- Set permanent configuration to true

## 4 - software installation
### Explications of files
- Installing basics is mandatory : `./basics.sh`

- `.bash_aliases` : Bash aliases that can be useful
- `zsh.sh` : Install ZSH, OhMyZSH et ZSH auto-suggestions
- `add-vhosts.sh` : Add " determine vhosts "
- `atom.sh` : Install atom editor
- `docker.sh` : Install docker and docker-compose
- `i3.sh` : Install the window manager " i3 "
- `libreoffice.sh` : Install the office suite " libreoffice "
- `phpstorm.sh` : Install PHPStorm IDE
- `vagrant.sh` : Install vagrant

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
