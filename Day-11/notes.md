# Day 11

## Nginx

Web Server

Uses:
- Website Hosting
- Reverse Proxy
- Load Balancer

Commands:

sudo apt install nginx -y

nginx -v

sudo service nginx start

sudo service nginx stop

sudo service nginx restart

## Important Ports

80 HTTP

443 HTTPS

## Website Location

/var/www/html

## Nginx Configuration

Main Config:
/etc/nginx/nginx.conf

Important Folders:
- sites-available
- sites-enabled

Server Block:
Maps domain to website files.

Reverse Proxy:
Browser -> Nginx -> Application
