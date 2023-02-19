FROM postgres:latest

LABEL maintainer="Alberto Gonzalez tokicross05@gmail.com"
LABEL org.label-schema.name="tokibd"

# Configuración de MariaDB

ENV POSTGRES_DB tokibd
ENV POSTGRES_USER desa
ENV POSTGRES_PASSWORD rrollo


# Copia el archivo .sql al directorio de trabajo del contenedor (No consigo que copie el script desde Dockerfile)
# COPY genera_bd.sql /docker-entrypoint-initdb.d/

# Establece una carpeta dentro del contenedor como directorio de trabajo
WORKDIR /app


EXPOSE 5432

CMD ["postgres"]

