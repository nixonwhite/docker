FROM mysql
ENV MYSQL_DATABASE=discovery
ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes
COPY createdb.sql /opt/
WORKDIR /opt
COPY . /docker-entrypoint-initdb.d/
HEALTHCHECK CMD mysql -uroot -e "SHOW ENGINES;"
