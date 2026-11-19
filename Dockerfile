FROM python:3.12-alpine
RUN mkdir -p /www && echo hello from hosting-eu > /www/index.html
WORKDIR /www
EXPOSE 8080
CMD ["python3", "-m", "http.server", "8080", "--bind", "0.0.0.0"]
