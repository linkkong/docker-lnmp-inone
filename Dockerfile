FROM ubuntu:16.04

MAINTAINER turtle "linkkong@github.com"

COPY ./sources.list /sources.list
COPY ./expect.sh /expect.sh

#RUN \
RUN     mv /etc/apt/sources.list /etc/apt/sources.list.old && mv /sources.list /etc/apt/sources.list && apt-get -y update && \
	apt install -y wget tcl expect && chmod +x /expect.sh  && wget http://soft.vpser.net/lnmp/lnmp1.4.tar.gz && \
        tar zxvf lnmp1.4.tar.gz && ./expect.sh




# 配置nginx

#Copy ./default /etc/nginx/sites-available/default

# 添加启动脚本

# Expose ports.
EXPOSE 3306
EXPOSE 80
EXPOSE 6379
EXPOSE 27017
