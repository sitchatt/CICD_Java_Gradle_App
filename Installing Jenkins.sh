## Installing JDK-11 ##

sudo apt update -y
sudo apt install openjdk-11-jre -y
java -version

## Installing Jenkins ##

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y 
sudo apt-get install jenkins -y

## Starting Jenkins ##

sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins