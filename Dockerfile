FROM quay.io/centos/centos:stream9

RUN dnf update -y && \
    dnf install -y httpd && \
    dnf clean all

EXPOSE 80

COPY inapp-1.0.0/* /var/www/html/

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
HEALTHCHECK --inerval=30s --timeout=3s \
CMD curl -f http://localhost/ || exit 1

