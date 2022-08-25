FROM ubuntu:latest
MAINTAINER a7pute
RUN apt-get update -y
RUN apt-get install apache2 
EXPOSE 80
RUN cd /var/www/html
RUN echo "Hello" > index.html
ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D","FOREGROUND"]

