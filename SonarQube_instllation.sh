## SSH to your Ubuntu server as a non-root user with sudo access ##
## Install OpenJDK 11 ##

sudo apt install openjdk-11-jdk -y


## Install and Configure PostgreSQL ##
## Add the PostgreSQL repository ##

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/
 `lsb_release -cs`-pgdg main"   /etc/apt/sources.list.d/pgdg.list'
 Add the PostgreSQL signing key.
wget -q https://www.postgresql.org/media/keys...
 -O - | sudo apt-key add -

 ## Install PostgreSQL ##

sudo apt install postgresql postgresql-contrib -y

## Enable the database server to start automatically on reboot ##

sudo systemctl enable postgresql

 ## Start the database server ##

sudo systemctl start postgresql

 