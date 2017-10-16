# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provision "shell", path: "pg_config.sh"



  # config.vm.box = "hashicorp/precise32"
  config.vm.box = "ubuntu/trusty32"
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  # config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 5000, host: 5000
  # this is new from server course
  # This configuration change will setup port forwarding 
  # from port 8080 on the host machine (your computer) 
  # to the guest machine (your Vagrant virtual machine) 
  # when your virtual machine is running. 
  # This will allow you to access your web server using the URL http://localhost:8080.
  config.vm.network "forwarded_port", guest: 80, host: 8080
end
