# Symfony Docker NGINX - Version

This is a fork of the [dunglas/symfony-docker](https://github.com/dunglas/symfony-docker) but with NGINX instead of Caddy webserver.  
It is not a direct fork, because I did create it step by step and just copied some parts from the [dunglas/symfony-docker](https://github.com/dunglas/symfony-docker) repo - but it works the same. Expect automatic SSL certificates.   
With NGINX we have to take care of it on our own.


## SSL Certificates

### Self Signed (for local development)

```shell
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./docker/nginx/ssl/server.key -out ./docker/nginx/ssl/server.crt
sudo openssl dhparam -out ./docker/nginx/ssl/dhparam.pem 4096
```

### Production Certificates (with certbot)


