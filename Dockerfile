# FROM ubuntu:20.04
FROM ubuntu:focal 

# MAINTAINER	Heropoo "aiyouyou1000@163.com"
LABEL org.opencontainers.image.authors="aiyouyou1000@163.com"

#set a faster repositorie
RUN sed -i 's/security.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list \
    && sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list


RUN apt-get update && apt-get install -y build-essential curl

# linux-kernel busybox
RUN gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 647F28654894E3BD457199BE38DBBDC86092693E 47B70C55ACC9965B 

CMD ["gcc", "--version"]