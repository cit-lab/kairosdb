# Use JDK7
FROM java:openjdk-7-alpine

MAINTAINER foo foo@bar.io

# Expose ports
# default web ui and http port
EXPOSE 8080
# default telnet server port
EXPOSE 4242

# Install curl and bash
RUN apk update; \
  apk add curl; \
  apk add bash

# Install Kairosdb
RUN mkdir /opt; \
  cd /opt; \
  curl -L https://github.com/kairosdb/kairosdb/releases/download/v1.1.1/kairosdb-1.1.1-1.tar.gz | \
  tar zxvfp -

# Add the start script
ADD kairosdb.sh /usr/bin/kairosdb

# TODO: change config file and data file location, in order to mount volume
# Run Kairosdb in foreground on boot
ENTRYPOINT [ "/usr/bin/kairosdb" ]