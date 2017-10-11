M centos 
# Install dependencies
RUN yum -y update 
RUN yum -y  install httpd  git 
COPY code/index.html /var/www/html
VOLUME /var/www/html
VOLUME /var/log
CMD ["apachectl","-D","FOREGROUND"]


