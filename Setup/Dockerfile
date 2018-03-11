FROM chug/ubuntu14.04x64 
MAINTAINER HUXINMIN

# 添加阿里云国内镜像仓库
RUN echo "deb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse\ndeb http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse\ndeb http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse\ndeb http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse\ndeb http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse" > /etc/apt/sources.list

#更新
RUN apt-get update

#安装环境
RUN apt-get install -y gcc \
        && apt-get install -y g++ \
        && apt-get install -y php5-cli \
        &&  apt-get install -y ruby \ 
        &&  apt-get install -y python \ 
        &&  apt-get install -y mono-xsp2 mono-xsp2-base \

        &&  apt-get install -y mono-vbnc \
        &&  apt-get install -y npm \
        &&  apt-get install -y golang-go \	
        &&  apt-get install -y nodejs \
        && export NODE_PATH=/usr/local/lib/node_modules/ \

        &&  apt-get install -y clojure1.4 \


        &&  apt-get install -y python-software-properties \
        &&  apt-get install -y software-properties-common \

#安装java环境
        &&  add-apt-repository -y ppa:webupd8team/java \
        &&  apt-get update \
        &&  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections \
        &&  apt-get install -y oracle-java8-installer \


        &&  apt-get install -y gobjc \
        &&  apt-get install -y gnustep-devel &&  sed -i 's/#define BASE_NATIVE_OBJC_EXCEPTIONS     1/#define BASE_NATIVE_OBJC_EXCEPTIONS     0/g' /usr/include/GNUstep/GNUstepBase/GSConfig.h \


        &&  apt-get install -y scala \
        &&  apt-get install -y mysql-server \
        &&  apt-get install -y perl \

        &&  apt-get install -y curl \

        &&  apt-get install -y sudo \
        &&  apt-get install -y bc \

RUN echo "mysql ALL = NOPASSWD: /usr/sbin/service mysql start" | cat >> /etc/sudoers