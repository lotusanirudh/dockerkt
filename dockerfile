FROM centos:latest
MAINTAINER lotus.anirudh@gmail.com
RUN yum update -y
RUN yum install -y httpd \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/fanadesh.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip fanadesh.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"
EXPOSE 80
