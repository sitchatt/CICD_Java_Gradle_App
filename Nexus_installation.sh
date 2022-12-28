###This is the first procedure to install OpenJDK V1.8 (nexus is best compatiable with this version)###
### (This script consist nexus-3.45.0-0 ; nexus latest version might needs to be changed as per current version) ###

## Update the system packages ##
sudo apt-get update -y

## Install OpenJDK 1.8 on Ubuntu 20.04 LTS ##
sudo apt install openjdk-8-jre-headless -y

## Navigate to '/opt' directory ##
cd /opt

## Download Nexus Repository Manager setup on Ubuntu 20.04 LTS ##
sudo wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz

## Unzip Nexus Repository on Ubuntu 20.04 LTS ##
tar -zxvf latest-unix.tar.gz

## Renaming the unzipped file to "nexus" for ease ##
sudo mv /opt/nexus-3.45.0-01 /opt/nexus
