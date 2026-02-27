FROM debian:13.2

# Evitar interacciones con apt
ARG DEBIAN_FRONTEND=noninteractive

# Instalamos MariaDB y utilidades necesarias
RUN apt update && apt install -y \
        mariadb-server \
        mariadb-client \
        wget \
        lsb-release \
        gnupg \
        iproute2 \
        gosu \
    && rm -rf /var/lib/apt/lists/*

# Preparamos directorio de runtime y permisos
RUN mkdir -p /run/mysqld \
    && chown -R mysql:mysql /run/mysqld

# Copiamos configuración personalizada y scripts de inicialización
COPY mysqld.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY db-init.sql /docker-entrypoint-initdb.d/

# Variables de entorno recomendadas

# Exponemos puerto estándar de MariaDB
EXPOSE 3306

# Arrancamos MariaDB como usuario no-root usando gosu
CMD ["sh", "-c", "exec gosu mysql mysqld_safe"]
