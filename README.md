# install docker on ubuntu


adduser ci

usermod -aG sudo ci

su ci

git clone https://github.com/BinhPhuongIT/installdockerubuntu.git

cd installdockerubuntu && sudo sh install.sh

