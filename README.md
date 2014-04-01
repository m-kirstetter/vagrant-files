vagrant-files
=============

My Vagrant setup  
It's a dev vagrant VM box with:  
* Debian 7.4
* PHP 5.4.4
* MySQL 5.5.35
* Node 0.10.21
* Ruby 1.9.3p194
* Apache 2.2.22 with mod_rewrite
* Composer installed globally
* Adminer  

This may change as when the script is run..

# Usage
```
cd /to/desired/folder
git clone git@github.com:maunoxyd/vagrant-files.git .
mkdir public
vagrant up
vagrant ssh
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
