FROM nginx:1.21.3-alpine

RUN apk update && apk upgrade
RUN apk add bash

COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY app/ /var/www/app/

EXPOSE 8080