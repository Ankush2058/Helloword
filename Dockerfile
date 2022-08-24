FROM centos:latest
MAINTAINER ankushsatpute
RUN yum update -y
RUN yum install httpd -y
RUN service httpd start
RUN cd /var/www/html/
ADD https://www.free-css.com/assets/images/free-css-templates/page282/astro-motion.jpg .
CMD ["/opt/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
