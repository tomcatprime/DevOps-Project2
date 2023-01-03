FROM  ubuntu
MAINTAINER karolchru@gmail.com
RUN sudo apt install -y nginx \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip shine.zip
RUN cp -rvf shine/* .
RUN rm -rf shine shine.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 20