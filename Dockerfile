FROM centos:7
RUN yum update -y
RUN yum install httpd -y
RUN cd /var/www/html
RUN echo "Hello" > index.html
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
