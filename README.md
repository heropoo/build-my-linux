# Build My Linux
Build a Linux based operating system from source code.


## docker
```
docker build -t heropoo/ubuntu-focal .
docker run -ti -v $PWD:/root -ti heropoo/ubuntu-focal /bin/bash
```