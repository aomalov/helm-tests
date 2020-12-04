FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install wget
RUN wget https://nginx.org/download/nginx-1.18.0.tar.gz
RUN mv nginx-1.18.0.tar.gz /home/
RUN cd home/
RUN tar -zxvf nginx-1.18.0.tar.gz
RUN cd nginx-1.18.0
RUN apt-get install build-essential
RUN apt-get install libpcre3 libpcre3-dev zlib1g zlib1g-dev libssl-dev
RUN ./configure --sbin-path=/usr/bin/nginx --conf-path=/etc/nginx/nginx.conf --error-log-path=/var/log/nginx/error.log --http-log-path=/var/log/nginx/access.log --with-pcre --pid-path=/var/run/nginx.pid
RUN make
RUN make install