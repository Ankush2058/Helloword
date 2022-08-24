FROM centos:latest
MAINTAINER ankushsatpute
RUN yum update -y
RUN yum install httpd -y
RUN service httpd start
RUN cd /var/www/html/
ADD https://www.pinterest.com/pin/641903753116704458/ .
CMD ["/opt/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
