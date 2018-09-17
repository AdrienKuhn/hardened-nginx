FROM nginx:1.15.2-alpine

COPY rootfs /

RUN apk add openssl && \
    mkdir /etc/nginx/ssl

ENTRYPOINT openssl req \
    -subj '/CN=localhost' \
    -x509 -newkey rsa:4096 \
    -nodes -keyout /etc/nginx/ssl/key.pem \
    -out /etc/nginx/ssl/cert.pem \
    -days 365 && \
    nginx -g 'daemon off;'
