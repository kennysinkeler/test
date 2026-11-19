FROM alpine:3.20
RUN mkdir -p /www && echo hello from hosting-eu > /www/index.html
EXPOSE 8080
ENTRYPOINT ["/bin/busybox", "httpd", "-f", "-p", "8080", "-h", "/www"]
