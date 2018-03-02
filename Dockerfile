FROM mysql

ENV MYSQL_ROOT_PASSWORD root
ENV MYSQL_DATABASE TRENDS

RUN mkdir /usr/sql
RUN chmod 644 /usr/sql

ADD src/config/setup.sql /docker-entrypoint-initdb.d/setup.sql

RUN /etc/init.d/mysql start

EXPOSE 3306
