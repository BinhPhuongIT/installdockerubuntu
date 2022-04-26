echo "Updating repo"
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common

echo "Adding key docker"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "Add repository docker"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update -y
apt-cache policy docker-ce

echo "install Docker CE"
sudo apt install docker-ce -y

echo "Install Docker compose"
sudo apt install docker-compose -y

echo "Add docker user"
sudo usermod -aG docker $USER
