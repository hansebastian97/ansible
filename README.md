# Ansible Labs - Provision Prometheus and Grafana using Ansible

This repository is a simple Ansible labs where I'm trying learn Ansible and it's components such as:
- Utilizing **Ansible Roles** for easily maintaining multiple different Ansible script
- **Template** for automatically generate configuration for each provisioned Hosts
- **Vars** for maintaining multiple similar values across the Ansible Playbook
- **Handlers** for restarting and enabling services each time the Ansible Playbook applied

## Brief explanation
In this project, I'm trying to configure monitoring environment automatically using Ansible. For this project, I've created 4 VMs using **Vagrant** which are:
- `controlnode`: For Ansible
- `jenkins and prod`: Servers in which I'm trying to scrape their logs using **node exporter**
- `monitor`: Servers for collecting logs (using **Prometheus**) and visualize (using **Grafana**)

## Notes
- The ansible files are located in the  `vagrant_folder -> ansible_project` in case you're confused with the directories
- The contents inside the vagrant_folder is quite messy because I'm trying to configure the **node-exporter**, **Prometheus**, and **Grafana** to use TLS certificate. Please bear with me :weary::weary::weary:

## Contributors
- [Hans Sebastian](https://github.com/hansebastian97/)