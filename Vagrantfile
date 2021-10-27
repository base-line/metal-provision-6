# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "apopa/focal64"
  config.vm.hostname = "metal-cli-6"
  config.vm.provision "shell", path: "bootstrap/boot.sh"
end
