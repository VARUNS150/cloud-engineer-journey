# Day 19 - Terraform Fundamentals

## Topics
- Infrastructure as Code (IaC)
- Terraform Workflow
- Terraform Binary
- Providers
- Terraform State
- Infrastructure Drift
- terraform init
- terraform fmt
- terraform validate

## Commands

```bash
terraform version
terraform init
terraform fmt
terraform validate
terraform -help
```

## Notes
- Terraform manages infrastructure using code.
- Terraform communicates with cloud providers through Providers.
- `terraform init` downloads required providers and initializes the project.
- `terraform fmt` formats Terraform code.
- `terraform validate` validates Terraform configuration.
- `terraform.tfstate` stores Terraform's infrastructure state.
- Infrastructure Drift occurs when cloud resources are changed manually.
- Never manually modify infrastructure managed by Terraform.

✅ Day 19 Completed
