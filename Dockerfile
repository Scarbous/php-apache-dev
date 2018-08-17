FROM webdevops/php-apache-dev:ubuntu-15.10

MAINTAINER Sascha Heilmeier <heilmeier@gigatec.de>

ENV PROVISION_CONTEXT "development"

COPY usr/local/bin/ /usr/local/bin/
COPY etc/       /opt/docker/etc/

RUN sed -i -e 's/archive.ubuntu.com\|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list

RUN ln -sf /opt/docker/etc/php/development.ini /opt/docker/etc/php/php.ini

COPY init.sh /tmp/init.sh
RUN chmod +x /tmp/init.sh \
    && /tmp/init.sh  \
    && rm /tmp/init.sh

# Configure volume/workdir
WORKDIR /app/public
