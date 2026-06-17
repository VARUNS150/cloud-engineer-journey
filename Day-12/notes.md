# Day 12

## AWS EC2 Deployment

Connected via SSH

Installed Nginx

Hosted website on AWS

Commands:

ssh -i key.pem ubuntu@public-ip

sudo apt update

sudo apt install nginx -y

sudo systemctl start nginx

sudo systemctl enable nginx

Website location:

/var/www/html

Architecture:

Browser
↓
Security Group
↓
EC2
↓
Nginx
↓
index.html
