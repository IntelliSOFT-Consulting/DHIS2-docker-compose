#!/bin/bash

# Set environment variables for d2-cluster-2380-core-1
DHIS2_HOME=/path/to/d2-cluster-2380_home
CATALINA_OPTS="-Dcontext.path='' -Dlog4j2.configurationFile=$DHIS2_HOME/log4j2.xml"
PATH=/usr/local/tomcat/bin:/usr/local/openjdk-11/bin:$PATH
JAVA_HOME=/usr/local/openjdk-11
LANG=C.UTF-8
JAVA_VERSION=11.0.15
CATALINA_HOME=/usr/local/tomcat
TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib

# Set environment variables for d2-cluster-2380-db-1
POSTGRES_USER=dhis
POSTGRES_PASSWORD=dhis
POSTGRES_DB=dhis2
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/postgresql/12/bin:$PATH
GOSU_VERSION=1.16
LANG=en_US.utf8
PG_MAJOR=12
PG_VERSION=12.14-1.pgdg110+1
PGDATA=/var/lib/postgresql/data
POSTGIS_MAJOR=3
POSTGIS_VERSION=3.3.2+dfsg-1.pgdg110+1

# Set environment variables for d2-cluster-2380-gateway-1
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
NGINX_VERSION=1.23.3
PKG_RELEASE=1
NJS_VERSION=0.7.9
NGINX_PROXY_VERSION=1.2.1-14-gabcef6b
DOCKER_GEN_VERSION=0.10.1
DOCKER_HOST=unix:///tmp/docker.sock


# Start the services using docker-compose
echo "Starting services using docker-compose..."
docker-compose up -d

