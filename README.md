# docker-centos7-demo-tool

git pull.

```
# git clone https://github.com/gowatana/docker-centos7-demo-tool.git
$ cd ./docker-centos7-demo-tool/
```

buil & run container.

```
# docker image build --tag centos7:local .
# docker run -it --rm centos7:local
[root@b4ca88b12a8a /]# cat /etc/centos-release
CentOS Linux release 7.8.2003 (Core)
```

run httpd container.

```
# docker image build --tag centos7:local-httpd .
# docker run -itd -p 8000:80 centos7:local-httpd
# curl localhost:8000
```

