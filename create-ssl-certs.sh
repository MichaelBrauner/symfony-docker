#!/bin/bash
# you may use "/C=EN/ST=HomeLocation/L=Home/O=HomeOrganization/OU=HomeOrganizationUnit/CN=HomeCommonName/emailAddress=admin@home.tld" here
openssl req -x509 -nodes -new -keyout ./docker/nginx/ssl/private/server.key -out ./docker/nginx/ssl/certs/server.cert -subj "/C=EN"
# and generate custom dhparams for nginx
openssl dhparam -out ./docker/nginx/ssl/dhparam.pem 2048