## Turn off swap. ##

sudo sed -i '/ swap / s/^\(.*\)$/#\1/g' /etc/fstab && sudo swapoff -a

## Enable kernel modules ##

sudo modprobe overlay && sudo modprobe br_netfilter

## configure sysctl. ##

sudo tee /etc/sysctl.d/kubernetes.conf<<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF

## Reload sysctl ## 

sudo sysctl --system

## Installing Docker runtime ##

## Add repo and Install packages ##

sudo apt update ; sudo apt install -y curl gnupg2 software-properties-common apt-transport-https ca-certificates && curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update ;  sudo apt install -y containerd.io docker-ce docker-ce-cli

## Create required directories ##

sudo mkdir -p /etc/systemd/system/docker.service.d

## Create daemon json config file ## 

sudo tee /etc/docker/daemon.json <<EOF
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

## Start and enable Services ##

sudo systemctl daemon-reload 
sudo systemctl restart docker
sudo systemctl enable docker

## Ensure you load modules ##

sudo modprobe overlay
sudo modprobe br_netfilter

## Set up required sysctl params ##
sudo tee /etc/sysctl.d/kubernetes.conf<<EOF
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
net.ipv4.ip_forward = 1
EOF




## Reload sysctl ##

sudo sysctl --system