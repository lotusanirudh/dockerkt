FROM centos:latest
MAINTAINER lotus.anirudh@gmail.com
RUN yum install -y httpd \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page273/speed.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip speed.zip
RUN cp -rvf markups-speed/* .
RUN rm -rf _MACOSX markups-speed speed.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80



