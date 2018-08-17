FROM webdevops/php-apache-dev:ubuntu-17.10

MAINTAINER Sascha Heilmeier <heilmeier@gigatec.de>

ENV PROVISION_CONTEXT "development"

COPY usr/local/bin/* /usr/local/bin/
COPY etc/       /opt/docker/etc/

RUN ln -sf /opt/docker/etc/php/development.ini /opt/docker/etc/php/php.ini

COPY init.sh /tmp/init.sh
RUN /tmp/init.sh \
    && rm /tmp/init.sh

# Configure volume/workdir
WORKDIR /app/public
