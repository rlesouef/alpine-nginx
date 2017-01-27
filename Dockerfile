FROM alpine:latest

MAINTAINER Open Source Services [opensourceservices.fr]

RUN apk --update add \
    bash nano \
    ca-certificates \
    nginx && \
    rm -rf /var/cache/apk/*

COPY src/ .

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log

RUN mkdir /app

VOLUME /app

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
