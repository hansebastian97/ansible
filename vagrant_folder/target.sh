#!/bin/bash

sudo apt install net-tools
# Copy SSH keys
# cat >> /home/vagrant/.ssh/authorized_keys <<EOF
# $(cat /vagrant/ssh_key.pub)
# EOF

# cp /vagrant/ssh_key /home/vagrant/.ssh/
# chmod 600 /home/vagrant/.ssh/ssh_key

# Create TLS Key
# openssl req \
#   -x509 \
#   -newkey rsa:4096 \
#   -nodes \
#   -keyout /vagrant/prometheus.com.key \
#   -out /vagrant/prometheus.com.crt \
#   -subj "/CN=prometheus"



# # Create TLS Key
# openssl req \
#   -x509 \
#   -newkey rsa:4096 \
#   -nodes \
#   -keyout /vagrant/ansible_project/roles/node_exporter/templates/node_exporter.key \
#   -out /vagrant/ansible_project/roles/node_exporter/templates/node_exporter.crt \
#   --subj "/CN=node_exporter"