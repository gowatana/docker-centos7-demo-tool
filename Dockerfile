FROM centos:7.8.2003

LABEL maintainer "Go Watanabe / gowatana@vmtn.jp"

RUN yum install \
  iproute \
  iptables \ 
  net-tools \
  bind-utils \
  lsof \
  unzip \
  wget \
  nc \
  tcpdump \
  which \
  --assumeyes; yum clean all

RUN yum install httpd --assumeyes; yum clean all
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]

