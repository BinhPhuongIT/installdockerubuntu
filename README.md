# install docker on ubuntu


Step 1: Create user ci
adduser ci

Step 2: Add to Group sudo
usermod -aG sudo ci

Step 3: Login to ci
su ci

Step 4: Download source
git clone https://github.com/BinhPhuongIT/installdockerubuntu.git

Step 5: Install Docker
cd installdockerubuntu && sudo sh install.sh
