FROM debian:13.2
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y mariadb-server mariadb-client wget lsb-release gnupg iproute2 gosu && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /run/mysqld \
    && chown mysql:mysql /run/mysqld

COPY mysqld.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY db-init.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

CMD ["mysqld_safe"]
