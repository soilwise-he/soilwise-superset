# soilwise-superset

Custom [Apache Superset](https://superset.apache.org/) Docker image with additional Python packages for OIDC authentication and session management.

## Included extras

- **authlib** - OAuth / OIDC client library
- **flask-session** - server-side session support for Flask

## Usage

Pull a specific release (recommended):

```bash
docker pull ghcr.io/soilwise-he/soilwise-superset:1.0.1
docker run -d -p 8088:8088 ghcr.io/soilwise-he/soilwise-superset:1.0.1
```

Or use the latest stable image:

```bash
docker pull ghcr.io/soilwise-he/soilwise-superset:latest
docker run -d -p 8088:8088 ghcr.io/soilwise-he/soilwise-superset:latest
```

## Releasing

Releases are managed by [Release Please](https://github.com/googleapis/release-please). The process is:

1. Merge PRs to `main` using [conventional commit](https://www.conventionalcommits.org/) titles (e.g. `fix: …`, `feat: …`). PR title format is enforced by CI.
2. Release Please automatically opens a release PR that bumps the version in [`CHANGELOG.md`](CHANGELOG.md) and [`.release-please-manifest.json`](.release-please-manifest.json).
3. Review and merge the release PR.
4. Release Please creates a git tag and a GitHub Release with the generated changelog.
5. The existing Docker publish workflow picks up the tag and pushes the versioned image to GHCR.

Version bumps follow semver based on commit types: `fix:` → patch, `feat:` → minor, `feat!:` / `BREAKING CHANGE` → major.

## Build locally

```bash
docker build -t soilwise-superset .
```
---
## Soilwise-he project
This work has been initiated as part of the [Soilwise-he](https://soilwise-he.eu) project. The project receives
funding from the European Union’s HORIZON Innovation Actions 2022 under grant agreement No.
101112838. Views and opinions expressed are however those of the author(s) only and do not necessarily
reflect those of the European Union or Research Executive Agency. Neither the European Union nor the
granting authority can be held responsible for them.
