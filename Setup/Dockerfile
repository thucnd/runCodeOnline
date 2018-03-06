FROM centos
MAINTAINER HUXINMIN

# wget
RUN yum -y install wget

#centos7 修改yum源为阿里源
RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup \
	&& cd /etc/yum.repos.d \
	&& wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo \
	&& yum clean all \
	&& yum makecache

# 安装环境
RUN  curl --silent --location https://rpm.nodesource.com/setup_4.x |  bash - \
	&& yum install -y gcc-c++ make \
	&& yum install -y nodejs