FROM rlesouef/alpine-base
MAINTAINER Richard Lesouef <rlesouef@gmail.com>

RUN apk --update add \
    nginx && \
    rm -rf /var/cache/apk/*

COPY src/ .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
