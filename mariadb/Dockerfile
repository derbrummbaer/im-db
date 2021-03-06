############################################################
# Dockerfile zum erstellen eines Dockercontainers für
# mariadb
###########################################################

FROM mariadb:10-bionic
#FROM mariadb:10.3
ENV MARIADB_VERSION 1:10.3.9+maria~bionic
# File Author / Maintainer
MAINTAINER Sven Berger

RUN apt update -qq && \
    apt install -qy locales && \
    echo "Europe/Berlin" > /etc/timezone && \
    dpkg-reconfigure -f noninteractive tzdata && \
    echo "de_DE.UTF-8 UTF-8" >> /etc/locale.gen; locale-gen

RUN set -ex; \
	apt install -qy \
	"libmariadbclient-dev=$MARIADB_VERSION" \
	"libmariadbclient18=$MARIADB_VERSION"

RUN apt install -qy build-essential \
	mysql-common \
	libmariadbclient-dev \
	zlib1g \
	zlib1g-dev \
	libcrypto++-dev \
	libssl-dev \
	python-mysqldb

WORKDIR /tmp


RUN mkdir -p /tmp/epglv/src
COPY epglv/* /tmp/epglv/
COPY epglv/src/* /tmp/epglv/src/

RUN cd /tmp/epglv && \
	make all && \
	make install

RUN	apt remove -qy build-essential \
	libcrypto++-dev \
	libssl-dev \
	libmariadbclient-dev \
	zlib1g-dev \
	python-mysqldb

RUN apt autoremove -qy && \
    apt clean && \
    apt purge && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


ENV LANG de_DE.UTF-8
ENV LANGUAGE de_DE:de
ENV LC_ALL de_DE.UTF-8

COPY scripte/mysqlepgd.cnf /etc/mysql/conf.d/
COPY scripte/*.sql /docker-entrypoint-initdb.d/

############################################################
# don't ask for stupid things
############################################################

############################################################
# Environment Variables
############################################################

############################################################
# Update Repository and upgrade Software
############################################################

############################################################
# Konfigure timezone and locale
############################################################

############################################################
# User anlegen
############################################################

############################################################
# HomeVerzeichnis mit Sticky Bit versehen
############################################################

############################################################
# Update Apt and Upgrade Software
############################################################

############################################################
# Remove Apt Data
############################################################

############################################################
# Install gosu
############################################################

############################################################
############################################################
# USE CROSS-BUILD for Raspberry PI Images
############################################################
############################################################

############################################################
# Container Start
############################################################
