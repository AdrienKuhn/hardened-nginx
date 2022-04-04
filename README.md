# hardened-nginx

[![CircleCI](https://circleci.com/gh/AdrienKuhn/hardened-nginx/tree/main.svg?style=shield)](https://circleci.com/gh/AdrienKuhn/hardened-nginx/tree/main)

Nginx hardened image based on `alpine` [nginx image](https://hub.docker.com/_/nginx).

## Main features

* Don't expose Nginx version
* Quad9 as default DNS resolver
* TLSv1.2 & TLSv1.3 only
* Disabled some weak ciphers
* Default self signed certificate is generated at start
* Some performance optimization
* Stream configuration

## Usage

### Docker images

Multi-arch docker images are available on [Docker Hub](https://hub.docker.com/r/krewh/hardened-nginx):

* The `latest` tag is built from the main branch.  
* The `latest` tag and the last release tag are refreshed nightly to get the latest security updates.

```bash
docker run --rm -it -p 8443:443 krewh/hardened-nginx
```
