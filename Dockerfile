FROM httpd:alpine3.18
RUN apk add libcap && chown -hR www-data:www-data /usr/local/apache2/ && \
  setcap 'cap_net_bind_service=+ep' /usr/local/apache2/bin/httpd
COPY --chown=www-data:www-data .htaccess /usr/local/apache2/htdocs/
COPY custom-httpd.conf /usr/local/apache2/conf/httpd.conf