FROM centos:7
RUN yum update -y && yum install -y httpd && yum install -y git
RUN git clone https://github.com/kakunindima/sources.git
RUN mv  /sources/cless8.com/ /var/www/html # && cp /sources/less8.com.conf /etc/httd/conf.d
EXPOSE 80
STOPSIGNAL SIGTERM
ENTRYPOINT ["httpd", "-D", "FOREGROUND"]

