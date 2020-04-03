FROM nginx:latest
RUN apt-get update  
RUN  apt-get install -y php php-cli php-fpm  php-mysql
COPY code/ /usr/share/nginx/html/
COPY *.html /usr/share/nginx/html/

COPY default.conf /etc/nginx/conf.d/
RUN service php7.3-fpm start
EXPOSE 9000
CMD php-fpm7.3 -F
#ENTRYPOINT ["/usr/bin/service", "php7.3-fpm start"]


