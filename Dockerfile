FROM centos:7
MAINTAINER a7pute
RUN yum update -y
RUN yum install httpd 
EXPOSE 80
RUN cd /var/www/html
RUN echo "Hello" > index.html
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D","FOREGROUND"]

