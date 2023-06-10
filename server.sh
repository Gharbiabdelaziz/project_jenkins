#!/bin/bash
# update and upgrade
sudo yum update -y
sudo yum upgrade -y

# Install epel-release and Java 11
sudo yum install -y epel-release java-11-openjdk wget

# Configure Jenkins YUM repository
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo

# Install Jenkins key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Install Jenkins
sudo yum -y install jenkins

# Enable Jenkins
sudo systemctl enable jenkins

# Start Jenkins
sudo systemctl start jenkins

# install ansible
sudo yum install -y ansible 

# enable sshd
sudo systemctl enable sshd

# start sshd
sudo systemctl restart sshd

# resolve name
sudo cat <<EOF >> /etc/hosts
192.168.1.40 server server
192.168.1.41 client client
EOF

