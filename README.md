#Tournament Planner
This is the second project in the [Udacity Fullstack Nanodgree](https://www.udacity.com/course/full-stack-web-developer-nanodegree--nd004) program.

The purpose of this project is to create an app to handle a swiss-style tournament.

##Installing
You'll use a virtual machine (VM) to run a database server and a web app that uses it. The VM is a Linux server system that runs on top of your own computer. You can share files easily between your computer and the VM.

I'm using the Vagrant software to configure and manage the VM.

Here are the tools you'll need to install to get it running:

###Git
You will need Git to install the configuration for the VM. If you don't already have Git installed, download Git from [git-scm.com](http://git-scm.com/downloads). Install the version for your operating system.

**On Windows:** Git will provide you with a Unix-style terminal and shell called **Git Bash**.  
**On Mac or Linux:** You can use the regular terminal program.

###VirtualBox
VirtualBox is the software that actually runs the VM. You can download it from [virtualbox.org](https://www.virtualbox.org/wiki/Downloads). Install the platform package for your operating system. You do not need the extension pack or the SDK. You do not need to launch VirtualBox after installing it.

**Ubuntu 14.04 Note:** If you are running Ubuntu 14.04, install VirtualBox using the **Ubuntu Software Center**, not the virtualbox.org web site. Due to a [reported bug](http://ubuntuforums.org/showthread.php?t=2227131), installing VirtualBox from the site may uninstall other software you need.

###Vagrant
Vagrant is the software that configures the VM and lets you share files between your host computer and the VM's filesystem. You can download it from [vagrantup.com](https://www.vagrantup.com/downloads). Install the version for your operating system.

**Windows Note:** The Installer may ask you to grant network permissions to Vagrant or make a firewall exception. Be sure to allow this.

###Use Git to fetch the VM configuration
**Windows:** Use **Git Bash** (installed with Git) to get a Unix-style terminal. 
**Other systems:** Use your favorite terminal program.

From the terminal, run:
```
cd /folder/to/install/project
git clone http://github.com/gsbullmer/tournament-planner tournament-planner
```
This will give you a directory named **tournament-planner**.

###Run the virtual machine!
Using the terminal, change directory to `tournament-planner/vagrant`, then type `vagrant up` to launch your virtual machine.

Once it is up and running, type `vagrant ssh` to log into it. This will log your terminal in to the virtual machine, and you'll get a Linux shell prompt. When you want to log out, type `exit` at the shell prompt. To turn the virtual machine off (without deleting anything), type `vagrant halt`. If you do this, you'll need to run `vagrant up` again before you can log into it.

##Files and commands we’ll be using
Files installed for this project are located in the **/vagrant** directory inside the virtual machine. Everything here is automatically shared with the **vagrant** directory inside the **tournament-results** directory on your computer. Any code files you save into that directory from your favorite text editor will be automatically available in the VM.