FROM alpine:3.16

RUN apk update && apk add redis

COPY ./conf/config.sh /bin/

ENTRYPOINT [ "sh", "/bin/config.sh" ]
