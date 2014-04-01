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
* Composer installed globally
* Adminer  

This may change as when the script is run..  

The folder where the script is run (host) is the same as /vagrant from inside the VM (guest).  

# Usage
Add the following on top of /etc/hosts file:
```
192.168.10.10   app.dev
```
```
sudo apt-get install git virtualbox
cd /to/desired/folder
git clone git@github.com:maunoxyd/vagrant-files.git .
mkdir public
vagrant up
vagrant ssh
```
To suspend/halt/destroy:  
```
vagrant suspend/halt/destroy
```
To list boxes:
```
vagrant box list
```
To delete box:
```
vagrant box remove vagrant-wheezy64 virtualbox
```

# For npm, run the following:
```
curl --insecure https://www.npmjs.org/install.sh | sudo bash
```

# For grunt, run:
```
sudo npm install -g grunt-cli
cd /vagrant
npm install grunt --save-dev 
npm install grunt-contrib-concat --save-dev 
npm install grunt-contrib-less --save-dev 
npm install grunt-contrib-uglify --save-dev 
npm install grunt-contrib-watch --save-dev 
npm install grunt-phpunit --save-dev
```

# For Bower:
```
sudo npm install -g bower
```

# For Twitter bootstrap with Bower:
```
bower install bootstrap -S
```

# Credentials
ssh user/password: vagrant/vagrant  
mysql database: db_name  
mysql user/password: root/root  

# Credits
Grunt install source: http://blog.elenakolevska.com/using-grunt-with-laravel-and-bootstrap/  
Inspired by Jeffrey Way's setup  
