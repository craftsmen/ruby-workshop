# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # This is a perfect box, created by Thoughtbot
  config.vm.box = 'thoughtbot/ubuntu-14-04-server-with-laptop'

  # Forward the default rails server port
  config.vm.network :forwarded_port, guest: 3000, host: 3000

  # Share current folder with the box
  config.vm.synced_folder ".", "/var/www"
end
