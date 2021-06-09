Vagrant.configure("2") do |config|
  config.vm.network "private_network", type: "dhcp"
  (1..2).each do |i|
    config.vm.define vm_name="web#{i}" do |node|
      node.vm.box = "edorion/nginx64"
      node.vm.hostname = vm_name
    end
    config.vm.provision :shell, path: "bootstrap.sh"
    config.vm.provider "virtualbox" do |v|
      v.memory = 2048
      v.cpus = 2
    end
  end
end
