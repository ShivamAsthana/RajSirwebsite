FROM centos:7
MAINTAINER shivamasthana24@gmail.com
RUN  yum install httpd -y 
zip \
unzip
ADD  https://www.free-css.com/assets/files/free-css-templates/download/page289/apollo.zip /var/www/html
WORKDIR /var/www/html
unzip apollo.zip
COPY . .
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]


