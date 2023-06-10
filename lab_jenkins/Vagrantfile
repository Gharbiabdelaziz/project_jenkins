#-------------------------------------------------------------------------
Vagrant.configure("2") do |config|

  config.vm.define "server" do |server|
  server.vm.box = "centos/7"
# server.disksize.size = "20GB"
  server.vm.provider "virtualbox" do |vb|
    vb.memory = "3072"
    vb.cpus = "2"
  end
  server.vm.hostname = "server"
  server.vm.network "public_network", ip: "192.168.1.40", bridge: "wlp2s0"
  server.vm.provision "shell", path: "server.sh"
end

  config.vm.define "client" do |client|
  client.vm.box = "centos/7"
  client.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    vb.cpus = "1"
  end
  client.vm.hostname = "client"
  client.vm.network "public_network", ip: "192.168.1.41", bridge: "wlp2s0"
  client.vm.provision "shell", path: "client.sh"
end
end

