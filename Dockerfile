FROM centos:7.9.2009

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
  openssh-clients \
  --assumeyes; yum clean all

