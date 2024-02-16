FROM nginx:1.25.4-alpine

RUN apk update --no-cache && \
    apk upgrade --no-cache && \
    apk add --no-cache openssl

COPY rootfs /

RUN mkdir /etc/nginx/ssl

EXPOSE 443

ENTRYPOINT \
  openssl req \
    -subj '/CN=localhost' \
    -x509 -newkey rsa:4096 \
    -nodes -keyout /etc/nginx/ssl/default_key.pem \
    -out /etc/nginx/ssl/default_cert.pem \
    -days 365 && \
  nginx -g 'daemon off;'
