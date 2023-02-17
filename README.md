# Symfony Docker NGINX - Version

This is a fork of the [dunglas/symfony-docker](https://github.com/dunglas/symfony-docker) but with NGINX instead of Caddy webserver.  
It is not a direct fork, because I did create it step by step and just copied some parts from the [dunglas/symfony-docker](https://github.com/dunglas/symfony-docker) repo - but it works the same. Expect automatic SSL certificates.   
With NGINX we have to take care of it on our own.


## SSL Certificates

### Self Signed (for local development)

First, create your certificate, key and dhparam file(s).
This must only be done once and may take a while.

```shell
./create-all-certificates.sh
```

### Production Certificates (with certbot)


