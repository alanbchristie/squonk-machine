# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|

  config.vm.provider 'virtualbox' do |v|
    v.name = 'squonk'
    v.memory = 8192
    v.cpus = 4
  end

  # Version-controlled base OS (with a 10GiB disk)
  config.vm.box = 'ubuntu/xenial64'
  config.vm.box_version = '20170929.0.0'
  config.vm.box_check_update = false

  # Connect host ports 8080 and 443 to the VM
  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :forwarded_port, guest: 443, host: 8443

  # Ansible expects Python, so we use a shell-provisioner here
  # to install Python on the host machine...
  config.vm.provision 'shell', inline: 'apt-get install -y python'

  config.vm.provision "ansible" do |ansible|
    #ansible.verbose = "v"
    ansible.compatibility_mode = "2.0"
    ansible.playbook = "playbook.yml"
  end

end
