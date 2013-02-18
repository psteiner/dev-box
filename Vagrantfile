# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.customize ["modifyvm", :id, "--name", "dev-box", "--memory", "512"]
  config.vm.box       = "precise32"
  config.vm.box_url   = "http://files.vagrantup.com/precise32.box"
  config.vm.host_name = "dev-box"
  config.vm.forward_port 22, 2222, :auto => true
  config.vm.forward_port 3000, 3000
  config.vm.share_folder "site", "site", "../site"
  config.vm.provision :puppet, 
    :module_path    => "modules"
end
