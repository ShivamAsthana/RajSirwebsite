FROM centos:7
MAINTAINER shivamasthana24@gmail.com
RUN  yum install httpd -y 
WORKDIR /var/www/html
COPY . .
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]


