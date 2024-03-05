#!/bin/bash

# Copy SSH keys
cat >> /home/vagrant/.ssh/authorized_keys <<EOF
$(cat /vagrant/ssh_key.pub)
EOF

cp /vagrant/ssh_key /home/vagrant/.ssh/
chmod 600 /home/vagrant/.ssh/ssh_key
