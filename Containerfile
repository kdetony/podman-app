FROM ubuntu:20.04
MAINTAINER kdetony
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y python3 pip mysql-server net-tools vim mc wget lynx curl less && apt-get clean
RUN pip install mysql-connector-python

EXPOSE 3306
ENV FOLDER_PROJECT /var/mysql_app
RUN mkdir -p $FOLDER_PROJECT

COPY podman_run_mariadb.sh $FOLDER_PROJECT
COPY start.sql $FOLDER_PROJECT
COPY src $FOLDER_PROJECT

RUN chmod +x /var/mysql_app/podman_run_mariadb.sh

CMD ["/var/mysql_app/podman_run_mariadb.sh"]
