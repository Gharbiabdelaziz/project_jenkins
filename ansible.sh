# Update package lists
sudo yum update -y
sudo yum upgrade -y
sudo sed -i 's/^#\s*PasswordAuthentication\syes/PasswordAuthentication yes/' /etc/ssh/ssh_config
sudo systemctl enable sshd
sudo systemctl restart sshd
 
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable docker
sudo systemctl start docker

sudo docker pull nginx
sudo docker run -d -p 81:80 --name c1 nginx





