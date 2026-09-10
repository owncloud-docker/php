# ownCloud: PHP

[![Docker CI](https://github.com/owncloud-docker/php/actions/workflows/main.yml/badge.svg)](https://github.com/owncloud-docker/php/actions/workflows/main.yml)
[![Docker Hub](https://img.shields.io/docker/v/owncloud/php?logo=docker&label=dockerhub&sort=semver&logoColor=white)](https://hub.docker.com/r/owncloud/php)
[![GitHub contributors](https://img.shields.io/github/contributors/owncloud-docker/php)](https://github.com/owncloud-docker/php/graphs/contributors)
[![Source: GitHub](https://img.shields.io/badge/source-github-blue.svg?logo=github&logoColor=white)](https://github.com/owncloud-docker/php)
[![License: MIT](https://img.shields.io/github/license/owncloud-docker/php)](https://github.com/owncloud-docker/php/blob/master/LICENSE)
[![ownCloud OSPO](https://img.shields.io/badge/OSPO-ownCloud-blue)](https://kiteworks.com/opensource)

ownCloud Docker PHP and webserver base image.

## Quick reference

- **Where to file issues:**\
  [owncloud-docker/php](https://github.com/owncloud-docker/php/issues)

- **Supported architectures:**\
  `amd64`, `arm64v8`

- **Inherited environments:**\
  [owncloud/ubuntu](https://github.com/owncloud-docker/ubuntu#environment-variables)

- **Build & maintenance:**\
  [How these images are built, scanned, updated and published](https://github.com/owncloud-docker/.github/blob/master/docs/IMAGE-LIFECYCLE.md)

## Docker Tags and respective Dockerfile links

- [`24.04`](https://github.com/owncloud-docker/php/blob/master/v24.04/Dockerfile.multiarch) available as `owncloud/php:24.04`
- [`22.04`](https://github.com/owncloud-docker/php/blob/master/v22.04/Dockerfile.multiarch) available as `owncloud/php:22.04`

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

## Community & Support

- [ownCloud Website](https://owncloud.com)
- [Community Discussions](https://github.com/orgs/owncloud/discussions)
- [Matrix Chat](https://app.element.io/#/room/#owncloud:matrix.org)
- [Documentation](https://doc.owncloud.com)
- [Enterprise Support](https://owncloud.com/contact-us/)
- [OSPO Home](https://kiteworks.com/opensource)

See [SUPPORT.md](SUPPORT.md) for the full list of support channels.

## Contributing

We welcome contributions! Please read the [Contributing Guidelines](CONTRIBUTING.md)
and our [Code of Conduct](CODE_OF_CONDUCT.md) before getting started.

- **Rebase Early, Rebase Often!** We use a rebase workflow — rebase on the target
  branch before submitting a PR.
- **Signed commits**: All commits **must** be PGP/GPG signed and carry a DCO
  `Signed-off-by` line (`git commit -S -s`).
- **Conventional Commits**: PR titles must follow the
  [Conventional Commits](https://www.conventionalcommits.org/) format — enforced
  by CI.
- **GitHub Actions Policy**: Workflows may only use actions owned by `owncloud`,
  created by GitHub (`actions/*`), or verified in the GitHub Marketplace, pinned
  to a full commit SHA.

## Security

**Do not open a public GitHub issue for security vulnerabilities.**

Report vulnerabilities at **<https://security.owncloud.com>** — see [SECURITY.md](SECURITY.md).

Bug bounty: [YesWeHack ownCloud Program](https://yeswehack.com/programs/owncloud-bug-bounty-program)

## About the ownCloud OSPO

The [Kiteworks Open Source Program Office](https://kiteworks.com/opensource), operating under
the [ownCloud](https://owncloud.com) brand, launched on May 5, 2026, to steward the open source
ecosystem around ownCloud's products. The OSPO ensures transparent governance, license compliance,
community health, and sustainable collaboration between the open source community and
[Kiteworks](https://www.kiteworks.com), which acquired ownCloud in 2023.

- **OSPO Home**: <https://kiteworks.com/opensource>
- **GitHub**: <https://github.com/owncloud>
- **ownCloud**: <https://owncloud.com>

For questions about the OSPO or licensing, contact ospo@kiteworks.com.

This repository is licensed under the permissive **MIT License**, which is already
compatible with the [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0)
that the OSPO is adopting across the ecosystem. No relicensing or copyleft
dependency audit is required.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/owncloud-docker/php/blob/master/LICENSE) file for details.

## Copyright

```Text
Copyright (c) 2022 ownCloud GmbH
```
