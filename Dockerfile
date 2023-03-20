FROM centos:latest
MAINTAINER shivamasthana24@gmail.com
RUN yum install -y httpd 
WORKDIR /var/www/html
COPY . .
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]

