# Day 10

## EC2

Virtual server in AWS.

## AMI

Operating System template.

Examples:
- Ubuntu
- Amazon Linux

## Instance Type

Defines CPU and RAM.

Example:
t2.micro

## Key Pair

Public Key + Private Key

.pem file must be protected.

## SSH

ssh -i key.pem ubuntu@public-ip

Port:
22 SSH

## SSH Keys

Private Key:
- Never shared
- Used by client

Public Key:
- Stored on server

Common Commands:

ssh-keygen

ssh -i key.pem ubuntu@IP

Permissions:

chmod 400 key.pem
