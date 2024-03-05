Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true 
  config.hostmanager.manage_host = true
  config.vbguest.auto_update = false
  config.ssh.insert_key = false
  # config.ssh.username = 'vagrant'
  # config.ssh.password = 'vagrant'
  
  ### Ansible ###
  config.vm.define "controlnode" do |controlnode|
    controlnode.vm.box = "geerlingguy/ubuntu2004"
    controlnode.vm.hostname = "controlnode"
    controlnode.vm.network "private_network", ip: "192.168.60.50", virtualbox__intnet: false
    controlnode.vm.synced_folder ".\\vagrant_folder", "/vagrant"
    controlnode.vm.provider "virtualbox" do |vb|
      # vb.gui = true
      vb.memory = "2024"
      vb.name = "controlnode"
      vb.customize ["modifyvm", :id, "--uart1", "0x3F8", "4"]
      vb.customize ["modifyvm", :id, "--uartmode1", "file", File::NULL]
    end
    controlnode.vm.provision "shell", privileged: false, path: ".\\vagrant_folder\\controlnode.sh"
  end  

  ### Jenkins ###
  config.vm.define "jenkins" do |jenkins|
    jenkins.vm.box = "geerlingguy/ubuntu2004"
    jenkins.vm.hostname = "jenkins"
    jenkins.vm.network "private_network", ip: "192.168.60.100", virtualbox__intnet: false
    jenkins.vm.synced_folder ".\\vagrant_folder", "/vagrant"
    jenkins.vm.provider "virtualbox" do |vb|
      # vb.gui = true
      vb.memory = "2024"
      vb.name = "jenkins"
      vb.customize ["modifyvm", :id, "--uart1", "0x3F8", "4"]
      vb.customize ["modifyvm", :id, "--uartmode1", "file", File::NULL]
    end
    jenkins.vm.provision "shell", privileged: false, path: ".\\vagrant_folder\\target.sh"
  end
  
  ### Monitoring (Prometheus Grafana) ###
  config.vm.define "monitor" do |monitor|
    monitor.vm.box = "geerlingguy/ubuntu2004"
    monitor.vm.hostname = "monitor"
    monitor.vm.network "private_network", ip: "192.168.60.110", virtualbox__intnet: false
    monitor.vm.synced_folder ".\\vagrant_folder", "/vagrant"
    monitor.vm.disk :disk, size: "10GB", primary: true
    monitor.vm.provider "virtualbox" do |vb|
      # vb.gui = true
      vb.memory = "1024"
      vb.name = "monitor"
      vb.customize ["modifyvm", :id, "--uart1", "0x3F8", "4"]
      vb.customize ["modifyvm", :id, "--uartmode1", "file", File::NULL]
    end
    monitor.vm.provision "shell", privileged: false, path: ".\\vagrant_folder\\target.sh"
  end
  
  
  ### Jenkins Slave / Deployment ###
  config.vm.define "prod" do |prod|
    prod.vm.box = "geerlingguy/ubuntu2004"
    prod.vm.hostname = "prod"
    prod.vm.network "private_network", ip: "192.168.60.150", virtualbox__intnet: false
    prod.vm.synced_folder ".\\vagrant_folder", "/vagrant"
    prod.vm.provider "virtualbox" do |vb|
      # vb.gui = true
      vb.memory = "1024"
      vb.name = "prod"
      vb.customize ["modifyvm", :id, "--uart1", "0x3F8", "4"]
      vb.customize ["modifyvm", :id, "--uartmode1", "file", File::NULL]
    end
    prod.vm.provision "shell", privileged: false, path: ".\\vagrant_folder\\target.sh"
  end
    
end