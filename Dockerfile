FROM centos:latest

RUN dnf update -y && \
    dnf install -y httpd && \
    dnf clean all

EXPOSE 80

COPY ./inapp-1.0.0/* /var/www/html/

