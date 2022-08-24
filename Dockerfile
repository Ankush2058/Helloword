FROM centos:7.1.1503
MAINTAINER a7pute
RUN yum install httpd -y 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/limelight.zip /var/www/html/ 
WORKDIR /var/www/html/
CMD ["/usr/sbib/httpd","-D","FOREGROUND"]
EXPOSE 80
