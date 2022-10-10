FROM fedora:latest
RUN mkdir structure
RUN chmod 777 structure
RUN dnf -yqq install httpd 
USER sync 
RUN mkdir /structure/sync-work
USER nobody
RUN mkdir /structure/nobody-work
USER root
RUN useradd -u 5000 collin
RUN echo 'Containers are easy!' >> '/var/www/html/index.html'
EXPOSE 80 
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND