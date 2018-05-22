FROM ubuntu

RUN apt-get update \
    && apt-get install -y apt-utils \
    && apt-get install -y nginx \
    && apt-get install -y php-fpm php7.0-mysql \
    && apt-get install -y vim

#COPY ./html/index.html /var/www/
#COPY ./html/main/wt11.ephec-ti.be /var/www/main/
#COPY ./html/b2b/b2b.wt11.ephec-ti.be /var/www/b2b/
#COPY ./html/intranet/intranet.wt11.ephec-ti.be /var/www/intranet/

COPY ./sites/default /etc/nginx/sites-available/
COPY ./sites/wt11.ephec-ti.be /etc/nginx/sites-available/
COPY ./sites/b2b.wt11.ephec-ti.be /etc/nginx/sites-available/
COPY ./sites/intranet.wt11.ephec-ti.be /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/wt11.ephec-ti.be /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/b2b.wt11.ephec-ti.be /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/intranet.wt11.ephec-ti.be /etc/nginx/sites-enabled/
#RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

RUN service php7.0-fpm start

RUN sed -i -e 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /etc/php/7.0/fpm/php.ini

expose 80
expose 443

CMD nginx -g "daemon off;"
#CMD service php7.0-fpm start && nginx -g "daemon off;"
