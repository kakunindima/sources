FROM centos:7
RUN yum update -y && yum install -y httpd && yum install -y git
RUN git clone https://github.com/kakunindima/sources.git
RUN mv /sources/less8/less8.com/ /var/www/html 
RUN cp /sources/less8/less8.com.conf /etc/httpd/conf.d
EXPOSE 80
STOPSIGNAL SIGTERM
ENTRYPOINT ["httpd", "-D", "FOREGROUND"]

