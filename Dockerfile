FROM centos:7.8.2003

LABEL maintainer "Go Watanabe / gowatana@vmtn.jp"

RUN yum install \
  iproute \
  iptables \ 
  net-tools \
  bind-utils \
  unzip \
  wget \
  --assumeyes

