## Install kubelet, kubeadm and kubectl ##
## add Kubernetes repository for Ubuntu 20.04 to all the servers. ##

sudo apt update && sudo apt -y install curl apt-transport-https

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list

## Then install required packages.##

sudo apt update
sudo apt -y install vim git curl wget kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl

## Confirm installation by checking the version of kubectl. ##

kubectl version --client && kubeadm version