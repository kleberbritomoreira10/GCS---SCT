# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "debian/jessie64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
    v.cpus = 2
    v.name = "sct_vm"
  end

  #Colocar os shell aqui. Shell são arquivos que realizam a instalação das dependências atraves de um #arquivo ".sh". Esses arquivos são lidos e então as "dependencias" são instaladas.
  #Abaixo segue os esquemas. 

  config.vm.provision "shell", path: "script-one.sh" 
  config.vm.provision "shell", path: "script-two.sh"
  config.vm.provision "shell", path: "script-three.sh"
  config.vm.provision "shell", path: "script-four.sh"

  config.vm.network "private_network", type: "dhcp"
  config.vm.network "forwarded_port", guest: 8000, host: 8080, auto_correct: true

end
