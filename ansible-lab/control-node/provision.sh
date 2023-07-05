#!/bin/sh

echo "Setting up EPEL-RELEASE repository"
sudo yum -y install epel-release

echo "Installing Ansible..."
sudo yum -y install ansible

cat <<EOT >> /etc/hosts
192.168.1.2 control-node
192.168.1.3 app01
192.168.1.4 db01
EOT

cat <<EOT >> /home/vagrant/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCrm8K0LNfHZHLQCeL0KBvQ/etUy5XN796v0gbHKzgvTqIfsK7Q79odlRMntHkkexBZknkZ5N8B6c+1HdAixRr/CNpc1SV6JZ3v5g7X/VuR+/2xXeIeZKTzH+2TQoWh0swDyDHRhoaEUQkNKXlYlxRhBoZq+ROLNL8XfFEMvSB31LC9e8wTyFd78mT4SW5sdt1FhP1i0JL7SWeZPWa9xUBjP/MkeCSzTc2Ssx4kl8gNpu4/AQ5QG6Gvu+Ijakw7DH96MgCXIjnF+apo2EigjqciKaoRgc6F9WxjNoozyo3DVycya0P/D7VU/Gi0JXOHt+dtP5zSZ/YEkxtkiY3Hgd+P vagrant@control-node
EOT

