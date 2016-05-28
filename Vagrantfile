# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "debian/jessie64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
    v.name = "sct_vm"
  end

  config.vm.network "forwarded_port", guest: 8000, host: 8080, auto_correct: true

  #Colocar os shell aqui. Shell são arquivos que realizam a instalação das dependências atraves de um #arquivo ".sh". Esses arquivos são lidos e então as "dependencias" são instaladas.
  #Abaixo segue os esquemas. 

  config.vm.provision "shell", path: "script-one.sh" 
  config.vm.provision "shell", path: "script-two.sh"
  config.vm.provision "shell", path: "script-three.sh"
  config.vm.provision "shell", path: "script-four.sh"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false     

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

end
