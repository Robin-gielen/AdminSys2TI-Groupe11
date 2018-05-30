FROM ubuntu

RUN apt-get update \
    && apt-get install -y apt-utils \
    && apt-get install -y nginx \
    && apt-get install -y php-fpm php7.0-mysql \
    && apt-get install -y vim

COPY ./sites/default /etc/nginx/sites-available/
COPY ./sites/wt11.ephec-ti.be /etc/nginx/sites-available/
COPY ./sites/b2b.wt11.ephec-ti.be /etc/nginx/sites-available/
COPY ./sites/intranet.wt11.ephec-ti.be /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/wt11.ephec-ti.be /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/b2b.wt11.ephec-ti.be /etc/nginx/sites-enabled/
RUN ln -s /etc/nginx/sites-available/intranet.wt11.ephec-ti.be /etc/nginx/sites-enabled/

RUN sed -i -e 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /etc/php/7.0/fpm/php.ini

expose 80
expose 443

CMD service php7.0-fpm start && nginx -g "daemon off;"
