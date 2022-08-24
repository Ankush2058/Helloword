FROM centos:7.1.1503
MAINTAINER a7pute
RUN yum install httpd -y 
RUN service httpd start
RUN cd /var/www/html/
ADD ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/limelight.jpg /var/www/html/ .
CMD ["/usr/sbib/httpd","-D","FOREGROUND"]
EXPOSE 80
