FROM gitlab/gitlab-ce

RUN (mv /etc/localtime /etc/localtime.old; ln -s /usr/share/zoneinfo/Asia/Bangkok /etc/localtime)
RUN useradd -ms /bin/bash ubuntu

RUN echo 'deb http://ftp.debian.org/debian stretch main' | tee /etc/apt/sources.list.d/stretch.list
RUN apt-get update && apt-get install -y \
        certbot -t stretch
