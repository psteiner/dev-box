# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.customize ["modifyvm", :id, "--name", "rails-dev-box", "--memory", "512"]
  config.vm.box       = "precise64_with_ruby193"
  config.vm.host_name = "rails-dev-box"
  config.vm.forward_port 22, 2222, :auto => true
  config.vm.forward_port 3000, 3000, :auto => true
  config.vm.network :hostonly, "33.33.13.37"
  config.vm.share_folder "site", "site", "../site"
  config.vm.share_folder "puppet", "/etc/puppet", "."
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
  end
end
