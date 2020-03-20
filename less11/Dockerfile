FROM alpine:latest
RUN apk update apk add httpd
#RUN mv /sources/less8.com/ /var/www/html 
#RUN cp /sources/less8.com.conf /etc/httpd/conf.d
RUN mkdir -p /run/nginx
#RUN rc-service nginx start
EXPOSE 80
STOPSIGNAL SIGTERM
ENTRYPOINT ["nginx", "-D", "FOREGROUND"]

