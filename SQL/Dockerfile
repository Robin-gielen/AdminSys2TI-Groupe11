FROM ubuntu 

ENV MYSQL_USER=mysql \
    MYSQL_DATA_DIR=/var/lib/mysql \
    MYSQL_RUN_DIR=/run/mysqld \
    MYSQL_LOG_DIR=/var/log/mysql
	

RUN apt-get update \
	&& DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server \
	&& rm -rf ${MYSQL_DATA_DIR} \
	&& rm -rf /var/lib/apt/lists/* 

COPY ./config/create_db.sql	/var/lib/mysql/config
COPY ./config/fill_db.sql	/var/lib/mysql/config

RUN chmod -R 755 /var/lib/mysql/config


EXPOSE 3306/tcp
VOLUME ["${MYSQL_DATA_DIR}", "${MYSQL_RUN_DIR}"]
CMD ["/usr/bin/mysqld_safe"]

