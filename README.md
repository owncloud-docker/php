# ownCloud: PHP

[![Build Status](https://drone.owncloud.com/api/badges/owncloud-docker/php/status.svg)](https://drone.owncloud.com/owncloud-docker/php)
[![](https://images.microbadger.com/badges/image/owncloud/php.svg)](https://microbadger.com/images/owncloud/php "Get your own image badge on microbadger.com")

This is our basic PHP and webserver stack, it is based on our [Ubuntu container](https://registry.hub.docker.com/u/owncloud/ubuntu/).


## Versions

To get an overview about the available versions please take a look at the [GitHub branches](https://github.com/owncloud-docker/php/branches/all) or our [Docker Hub tags](https://hub.docker.com/r/owncloud/php/tags/), these lists are always up to date. Please note that release candidates or alpha/beta versions are only temporary available, they will be removed after the final release of a version.


## Volumes

* None


## Ports

* 8080


## Available environment variables

```
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


## Inherited environment variables

* [owncloud/ubuntu](https://github.com/owncloud-docker/ubuntu#available-environment-variables)


## Issues, Feedback and Ideas

Open an [Issue](https://github.com/owncloud-docker/php/issues)


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)
* [Felix Boehm](https://github.com/felixboehm)


## License

MIT


## Copyright

```
Copyright (c) 2018 Thomas Boerger <tboerger@owncloud.com>
```
