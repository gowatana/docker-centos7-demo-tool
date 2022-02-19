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

RUN yum install httpd --assumeyes; yum clean all

RUN chown -R apache:apache /etc/httpd /run/httpd /var/log/httpd; sed -i 's|Listen 80|Listen 8000|' /etc/httpd/conf/httpd.conf
USER apache
EXPOSE 8000
CMD ["httpd", "-D", "FOREGROUND"]

