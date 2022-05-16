# installdockerubuntu


#1 Create user ci
adduser ci

#2 Add to Group sudo
usermod -aG sudo ci

#3 Login to ci
su ci

#4 Install Docker
sh install.sh
