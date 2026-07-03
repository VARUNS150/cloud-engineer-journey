# Day 21 - Terraform Variables & Outputs (Part 1)

## Topics
- Terraform Variables
- variables.tf
- terraform.tfvars
- Outputs
- Variable References

## Commands

```bash
touch variables.tf
touch terraform.tfvars
touch outputs.tf

terraform fmt
terraform validate
terraform plan
terraform apply
terraform output
```

## Notes
- `variables.tf` defines input variables.
- `terraform.tfvars` stores actual variable values.
- `main.tf` contains infrastructure logic.
- Outputs display resource information after deployment.
- Use `var.<variable_name>` to access variables.
- Terraform automatically loads `terraform.tfvars`.

✅ Day 21 Part 1 Completed
