#! /bin/bash
 
echo -n "Uppdaterar referenser"

sudo apt-get update

echo -n "Installerar grund"

sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common openssh-server git

echo -n "Hämtar nyckel för arkiv på Docker"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo -n "Uppdaterar referenser för apt"

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

echo -n "Uppdaterar referenser"

sudo apt-get update

echo -n "Installerar Docker"

sudo apt-get -y install docker-ce

echo -n "Lägger till användare i gruppen docker"

sudo usermod -aG docker $USER

echo -n "Användare tillagd"

echo -n "Klart"

