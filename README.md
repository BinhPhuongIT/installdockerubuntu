## install docker on ubuntu

### Create user
```sh
adduser ci
```

### Add to group sudo
```sh
usermod -aG sudo ci
```

### Login to ci
```sh
su ci
```

### Install dockler
```sh
git clone https://github.com/BinhPhuongIT/installdockerubuntu.git
cd installdockerubuntu && sudo sh install.sh
```
