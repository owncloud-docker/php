# ownCloud: PHP

[![Build Status](https://drone.owncloud.com/api/badges/owncloud-docker/php/status.svg)](https://drone.owncloud.com/owncloud-docker/php)
[![Docker Hub](https://img.shields.io/docker/v/owncloud/php?logo=docker&label=dockerhub&sort=semver&logoColor=white)](https://hub.docker.com/r/owncloud/php)
[![GitHub contributors](https://img.shields.io/github/contributors/owncloud-docker/php)](https://github.com/owncloud-docker/php/graphs/contributors)
[![Source: GitHub](https://img.shields.io/badge/source-github-blue.svg?logo=github&logoColor=white)](https://github.com/owncloud-docker/php)
[![License: MIT](https://img.shields.io/github/license/owncloud-docker/php)](https://github.com/owncloud-docker/php/blob/master/LICENSE)

ownCloud Docker PHP and webserver base image.

## Quick reference

- **Where to file issues:**\
  [owncloud-docker/php](https://github.com/owncloud-docker/php/issues)

- **Supported architectures:**\
  `amd64`, `arm64v8`

- **Inherited environments:**\
  [owncloud/ubuntu](https://github.com/owncloud-docker/ubuntu#environment-variables)

## Docker Tags and respective Dockerfile links

- [`latest`](https://github.com/owncloud-docker/php/blob/master/latest/Dockerfile.amd64) available as `owncloud/php:latest`
- [`20.04`](https://github.com/owncloud-docker/php/blob/master/v20.04/Dockerfile.amd64) available as `owncloud/php:20.04`

## Default volumes

None

## Exposed ports

- 8080

## Environment variables

```Shell
HOME /var/www/html
LANG C
APACHE_RUN_USER www-data
APACHE_RUN_GROUP www-data
APACHE_RUN_DIR /var/run/apache2
APACHE_PID_FILE ${APACHE_RUN_DIR}/apache2.pid
APACHE_LOCK_DIR /var/lock/apache2
APACHE_ERROR_LOG /dev/stderr
APACHE_ACCESS_LOG /dev/stdout
APACHE_LOG_FORMAT combined
APACHE_LOG_LEVEL warn
APACHE_DOCUMENT_ROOT /var/www/html
APACHE_SERVER_NAME localhost
APACHE_SERVER_ADMIN webmaster@localhost
APACHE_SERVER_TOKENS Prod
APACHE_SERVER_SIGNATURE Off
APACHE_TRACE_ENABLE Off
APACHE_TIMEOUT 300
APACHE_KEEP_ALIVE On
APACHE_MAX_KEEP_ALIVE_REQUESTS 100
APACHE_KEEP_ALIVE_TIMEOUT 5
APACHE_ADD_DEFAULT_CHARSET UTF-8
APACHE_HOSTNAME_LOOKUPS Off
APACHE_ACCESS_FILE_NAME .htaccess
APACHE_LISTEN 8080
```

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/owncloud-docker/php/blob/master/LICENSE) file for details.

## Copyright

```Text
Copyright (c) 2022 ownCloud GmbH
```
