# install docker on ubuntu

# Create user
adduser ci

# Add to group sudo
usermod -aG sudo ci

# Login to ci
su ci

# Install dockler
git clone https://github.com/BinhPhuongIT/installdockerubuntu.git

cd installdockerubuntu && sudo sh install.sh
