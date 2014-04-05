vagrant-files
=============

My Vagrant setup (on an Ubuntu 13.10 host)  

Vagrant is an awesome tool for webdevelopers that allows to create ready-made virtual machines, I use it to keep my laptop clean of any webdevelopment setup. It's good as well for teams to work on exact same setup and if each projects needs different setup.  

Update install.sh to change initial setup.  

URL to access project on host : http://app.dev (1 VM at a time).  

This setup has been made for Ubuntu host and Debian guest. For other hosts, use distro package manager to install virtualbox and git.  

It's a webdev vagrant VM box with:  
* Debian 7.4
* PHP 5.4.4
* MySQL 5.5.35
* Node 0.10.21
* Ruby 1.9.3p194
* Apache 2.2.22 with mod_rewrite mcrypt curl gd json xdebug
* Composer global install
* Adminer
* Latest Grunt & Bower
* Latest Twitter Bootstrap  

Edit install-guest.sh to not install Twitter, Grunt, Bower  

The folder where the script is run (host) is the same as /vagrant from inside the VM (guest).  

# Usage
Add the following on top of /etc/hosts file:
```
192.168.10.10   app.dev
```
To install everything
```
sudo apt-get install git virtualbox vagrant
mkdir project && cd project
git clone git@github.com:maunoxyd/vagrant-files.git .
mkdir public
vagrant up
vagrant ssh
cd /vagrant
sudo chmod +x install-guest.sh
./install-guest.sh
```
To start/suspend/halt/destroy (from host):  
```
vagrant up/suspend/halt/destroy
```
To list boxes (from host):
```
vagrant box list
```
To delete box (from host):
```
vagrant box remove vagrant-wheezy64 virtualbox
```

# Credentials
ssh user/password: vagrant/vagrant  
mysql database: db_name  
mysql user/password: root/root  

# Credits
Grunt install source: http://blog.elenakolevska.com/using-grunt-with-laravel-and-bootstrap/  
Inspired by Jeffrey Way's setup  
