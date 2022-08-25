FROM centos:7.1.1503
MAINTAINER a7pute
RUN yum install httpd -y 
RUN cd /var/www/html
RUN echo "Hello , Good N8 " > index.html
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
