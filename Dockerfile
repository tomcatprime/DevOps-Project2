FROM ubuntu:latest
MAINTAINER karolchru@gmail.com
RUN apt install -y apache2 \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page286/cobsine.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip cobsine.zip
RUN cp -rvf cobsine/* .
RUN rm -rf conbsine cobsine.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 20 
