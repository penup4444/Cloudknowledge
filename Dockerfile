FROM centos:latest
MAINTAINER Abhisheksingh0121@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/cleanphotography.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip cleanphotography.zip
RUN cp -rvf cleanphotography/* .
RUN rm -rf cleanphotography.zip
CMD ["usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
