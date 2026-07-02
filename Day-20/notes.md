# Day 20 - Terraform AWS Authentication (Part 1)

## Topics
- Terraform & AWS Authentication
- AWS CLI Installation
- AWS API
- Root User vs IAM User
- Access Key & Secret Key

## Commands

```bash
aws --version
sudo apt update
sudo apt install unzip curl -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

## Notes
- Terraform communicates with AWS using AWS APIs.
- AWS CLI is used to configure credentials.
- Never use the Root account for Terraform.
- Always create an IAM User for automation.
- Access Key and Secret Key are used for API authentication.

✅ Day 20 Part 1 Complete
