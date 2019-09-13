FROM owncloud/ubuntu:latest

LABEL maintainer="ownCloud DevOps <devops@owncloud.com>" \
  org.label-schema.name="ownCloud PHP" \
  org.label-schema.vendor="ownCloud GmbH" \
  org.label-schema.schema-version="1.0"

EXPOSE 8080

ENTRYPOINT ["/usr/bin/entrypoint"]
CMD ["/usr/bin/server"]

RUN curl -sSL https://download.owncloud.com/repositories/sernet/sernet.key | apt-key add - && \
  curl -sSL -o /etc/apt/sources.list.d/sernet.list http://download.owncloud.com/repositories/sernet/samba-4.8/ubuntu/dists/bionic/sernet-samba-4.8.list

RUN apt-get update -y && \
  apt-get upgrade -y && \
  apt-get install -y \
    apache2 \
    libapache2-mod-php \
    php-gd \
    php-json \
    php-mysql \
    php-sqlite3 \
    php-pgsql \
    php-curl \
    php-intl \
    php-imagick \
    php-zip \
    php-xml \
    php-mbstring \
    php-soap \
    php-ldap \
    php-apcu \
    php-redis \
    php-smbclient \
    php-gmp \
    sernet-samba-client \
    patch \
    mysql-client \
    postgresql-client \
    sqlite && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /etc/apache2/envvars /etc/apache2/conf-* /etc/apache2/sites-* /var/log/apache2/* && \
  a2enmod rewrite headers env dir mime expires remoteip && \
  mkdir -p /var/www/html && \
  chown -R www-data:www-data /var/www/html /var/log/apache2 /var/run/apache2 && \
  chsh -s /bin/bash www-data

COPY rootfs /
WORKDIR /var/www/html
