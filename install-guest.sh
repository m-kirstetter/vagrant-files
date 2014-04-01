#!/bin/bash

curl --insecure https://www.npmjs.org/install.sh | sudo bash

sudo npm install -g grunt-cli

cd /vagrant
npm install grunt --save-dev 
npm install grunt-contrib-concat --save-dev 
npm install grunt-contrib-less --save-dev 
npm install grunt-contrib-uglify --save-dev 
npm install grunt-contrib-watch --save-dev 
npm install grunt-phpunit --save-dev

sudo npm install -g bower

bower install bootstrap -S
