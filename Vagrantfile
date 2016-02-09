# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_check_update = false

  # This sets the Interface to bridge with the VM
  # You will need to adjust this value to your own machine
  # You can get the name from: 
  #   1. Opening Virtualbox
  #   2. Going to Settings > Network of already provisioned box
  #   3. Select Bridged Adapter from Attached to dropdown
  #   4. In Name drop down below you will see the references to the adapters:
  config.vm.network "public_network", bridge: "en4: Thunderbolt Ethernet"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end
end
