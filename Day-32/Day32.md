# Day 32 - Terraform Infrastructure Deployment

## Topics Covered

- Terraform Apply
- EC2 Instance Deployment
- SSH Connection
- EC2 User Data
- Nginx Installation
- Custom Website Deployment
- Terraform Resource Replacement
- Infrastructure Verification
- Security Group Hardening
- Restricting SSH Access
- Terraform Plan and State Synchronization

## Infrastructure Flow

Terraform
↓
Remote State
↓
Modules
├── Security Group
├── Key Pair
└── EC2
↓
Ubuntu EC2
↓
User Data
↓
Nginx
↓
Custom Website
↓
Public Internet

## EC2 Deployment

Terraform successfully created an EC2 instance using:

- Ubuntu AMI from Terraform Data Source
- EC2 module
- Security Group module
- Key Pair module
- User Data

## User Data

Used User Data to automate:

- apt update
- Nginx installation
- Nginx service start
- Custom HTML page deployment

This allowed a fresh EC2 instance to automatically become a web server.

## Resource Replacement

Used:

terraform apply -replace="module.ec2.aws_instance.web"

to intentionally replace the existing EC2 instance and verify that the infrastructure could be recreated from Terraform.

## Security Hardening

Initially SSH was open to:

0.0.0.0/0

Later changed to:

YOUR_PUBLIC_IP/32

HTTP remained publicly accessible:

0.0.0.0/0

because the website needs to be accessible from the internet.

## Important Learnings

- Terraform manages infrastructure configuration and state.
- Manual changes inside an EC2 instance are not a replacement for Infrastructure as Code.
- User Data allows automatic server configuration during first boot.
- EC2 public IP can change when the instance is replaced.
- SSH should not be unnecessarily exposed to the entire internet.
- Variables make infrastructure configurable.
- Modules make infrastructure reusable.
- Root modules orchestrate child modules.
- Terraform outputs expose useful resource information.

## Debugging Experience

### Nginx Installation Error

Nginx installation initially returned:

404 Not Found

because of stale package metadata.

Running:

sudo apt-get update

resolved the package repository issue.

### Terraform Module Path

Modules were located at the project root, while the root Terraform configuration was inside infrastructure.

Therefore module paths were:

../modules/...

instead of:

./modules/...

## Final Result

Successfully deployed:

- AWS EC2
- Security Group
- Key Pair
- Nginx
- Custom Website
- Remote Terraform State
- Restricted SSH Access

## Next

- Environment separation
- Dev / QA / Production
- Environment-specific Terraform state
- Final project cleanup
- Terraform learning continuation
