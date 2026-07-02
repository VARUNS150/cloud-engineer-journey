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


# Day 20 - First Infrastructure with Terraform

## Topics
- AWS CLI Setup
- IAM Authentication
- AWS Provider Configuration
- First EC2 using Terraform
- terraform plan
- terraform apply
- Resource Update
- terraform destroy

## Commands

```bash
aws configure
aws sts get-caller-identity

terraform fmt
terraform validate
terraform init
terraform plan
terraform apply
terraform plan -destroy
terraform destroy
```

## Notes
- Terraform authenticates using AWS CLI credentials.
- Provider defines which cloud Terraform manages.
- `terraform plan` shows the execution plan without making changes.
- `terraform apply` creates or updates infrastructure.
- `terraform destroy` removes Terraform-managed resources.
- `~` = Update
- `+` = Create
- `-` = Delete
- `-/+` = Replace Resource

✅ Day 20 Completed
