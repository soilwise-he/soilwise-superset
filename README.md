# soilwise-superset

Custom [Apache Superset](https://superset.apache.org/) Docker image with additional Python packages for OIDC authentication and session management.

## Included extras

- **authlib** - OAuth / OIDC client library
- **flask-session** - server-side session support for Flask

## Usage

```bash
docker pull ghcr.io/soilwise-he/soilwise-superset:latest
docker run -d -p 8088:8088 ghcr.io/soilwise-he/soilwise-superset:latest
```

## Build locally

```bash
docker build -t soilwise-superset .
```
