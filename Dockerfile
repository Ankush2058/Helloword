FROM centos:7.1.1503
MAINTAINER a7pute
RUN yum install httpd -y \ zip \ unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/limelight.zip /var/www/html/ 
WORKDIR /var/www/html/
RUN unzip limelight.zip
RUN cp -rvf limelight/* .
RUN rm -rf limelight.zip limelight
CMD ["/usr/sbib/httpd","-D","FOREGROUND"]
EXPOSE 80
