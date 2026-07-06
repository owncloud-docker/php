# agents.md — php

## Repository Overview

This repository builds the official **ownCloud PHP and webserver** Docker image
(`owncloud/php` on Docker Hub). It is a base layer: it sits on top of
[`owncloud/ubuntu`](https://github.com/owncloud-docker/ubuntu) and adds PHP and
an Apache webserver configured for ownCloud. The
[`owncloud/base`](https://github.com/owncloud-docker/base) image builds `FROM`
it. Images are multi-architecture and built via GitHub Actions.

- **Classification:** Docker image build (PHP/webserver layer)
- **Activity Status:** Active
- **License:** MIT
- **Language:** Dockerfile, Shell

## Architecture & Key Paths

- `v22.04/` — Ubuntu 22.04 based image with **PHP 7.4** (Freexian)
  - `v22.04/Dockerfile.multiarch` — image definition (`FROM owncloud/ubuntu:22.04`)
- `v24.04/` — Ubuntu 24.04 based image with **PHP 8.3**
  - `v24.04/Dockerfile.multiarch` — image definition (`FROM owncloud/ubuntu:24.04`)
- `docs/` — design/spec notes
- `.github/workflows/main.yml` — **active** CI (build, smoke test, scan, publish)
- `.github/workflows/lint-pr-title.yml` — Conventional-Commit PR-title enforcement
- `.github/dependabot.yml` — weekly GitHub Actions dependency updates
- `.renovaterc.json` — Renovate preset for Docker digest updates
- `.editorconfig` — formatting rules (2-space indent, LF, trailing newline)
- `.trivyignore` — accepted-CVE exclusions for the Trivy scan
- `CHANGELOG.md` — flat, date-based changelog at repo root
- `LICENSE` — MIT

## Build & CI

There is no local application build (no Node/pnpm/Make toolchain). The image is
built by `.github/workflows/main.yml`, which calls reusable workflows hosted in
[`owncloud-docker/ubuntu`](https://github.com/owncloud-docker/ubuntu):

- Matrix builds `22.04` (PHP 7.4) and `24.04` (PHP 8.3), each via
  `v<version>/Dockerfile.multiarch`.
- Smoke test: `php --version | grep -qF 'PHP <expected>'`.
- Trivy vulnerability scan (`.trivyignore`).
- The build injects a Debian mirror via `docker-secrets` for the Freexian PHP 7.4
  packages.
- On `master`: push to Docker Hub and sync the README as the image description.

To build locally:

```bash
docker build -f v24.04/Dockerfile.multiarch v24.04
```

The image exposes port `8080`.

## Development Conventions

- Date-based `CHANGELOG.md` at repo root — **not** a `changelog/unreleased/`
  directory. Prepend a new `## YYYY-MM-DD` section for notable changes.
- Conventional-Commit PR titles, enforced by `lint-pr-title.yml`.
- `.editorconfig` governs formatting.
- GitHub Actions are pinned to full commit SHAs.

## OSPO Policy Constraints

### GitHub Actions
- **Only** use actions owned by `owncloud`, created by GitHub (`actions/*`),
  verified on the GitHub Marketplace, or verified by the ownCloud Maintainers.
- Pin all actions to their full commit SHA (not tags): `uses: actions/checkout@<SHA> # vX.Y.Z`.
- Never introduce actions from unverified third parties.

### Dependency Management
- Dependabot is configured for GitHub Actions updates; Renovate handles Docker
  base-image digest updates.
- Review and merge dependency PRs as part of regular maintenance.

### Git Workflow
- **Rebase policy**: Always rebase; never create merge commits.
- **Signed commits**: All commits **must** be PGP/GPG signed (`git commit -S`).
- **DCO sign-off**: Every commit needs a `Signed-off-by` line (`git commit -s`).
- **Conventional Commits & Squash Merge**: PR titles must follow
  [Conventional Commits](https://www.conventionalcommits.org/); the PR title
  becomes the squash-merge commit message and is enforced by CI.

## Context for AI Agents

- This is a small Docker-image packaging repo, not an application codebase.
- The two `v*/` directories differ mainly in Ubuntu release and PHP version
  (7.4 vs 8.3); changes usually apply to both.
- The active build system is GitHub Actions (`main.yml`).
- The README is published verbatim as the Docker Hub image description — keep it
  accurate and self-contained.
- License is **MIT** (permissive, already compatible with Apache-2.0); no
  copyleft dependency audit is required for relicensing.
