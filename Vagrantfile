# -*- mode: ruby -*-
# vi: set ft=ruby :7

Vagrant.configure("2") do |config|

  config.vm.box = "debian-wheezy64"
  
  config.vm.box_url = "https://s3-eu-west-1.amazonaws.com/rocketlab/wheezy64.box"

  ## Choose between an url like http://localhost:8080 or IP based, which allows you to configure a local domain on your host
  #config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :private_network, ip: "192.168.10.10"

  config.vm.provision :shell, :path => "install.sh"
  
  config.vm.synced_folder ".", "/vagrant", :mount_options => ["dmode=777", "fmode=666"]

end
