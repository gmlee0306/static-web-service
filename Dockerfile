FROM ubuntu:14.04
MAINTAINER "gmlee0306 <gmlee0306@docker.com>"
LABEL "purpose"="static web service"
RUN apt-get update;
RUN apt-get install -y apache2;
ADD ./index.html /var/www/html
ADD ./script.js /var/www/html
ADD ./style.css /var/www/html
WORKDIR /var/www/html
EXPOSE 80
CMD apachectl -D FOREGROUND
