FROM gliderlabs/alpine:3.3

RUN apk --update add \
	bash nano \
    nginx && \
    rm -rf /var/cache/apk/*

COPY src/ .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
