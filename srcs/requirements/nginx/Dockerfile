FROM alpine:3.16

RUN apk update && apk add nginx --no-cache

COPY ./conf/guferrei.42.fr* /etc/ssl/

CMD ["nginx", "-g", "daemon off;"]
