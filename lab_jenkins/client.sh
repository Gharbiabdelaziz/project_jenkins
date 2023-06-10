sudo sed -i 's/^#\s*PasswordAuthentication\syes/PasswordAuthentication yes/' /etc/ssh/ssh_config
sudo sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo sed -i 's/^PasswordAuthentication no/#PasswordAuthentication no/' /etc/ssh/sshd_config
sudo systemctl restart sshd.service
