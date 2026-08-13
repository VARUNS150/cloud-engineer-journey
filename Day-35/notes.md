# Day 35 — Advanced Terraform & Best Practices

## Topics Covered

### Terraform Lifecycle Rules
- create_before_destroy
- prevent_destroy
- ignore_changes

### Terraform State Management
- terraform state list
- terraform state show
- terraform state mv
- terraform state rm
- Difference between state rm and destroy

### Terraform Import
- Importing existing AWS resources
- Importing resources into Terraform state
- Import vs terraform apply
- Post-import configuration alignment

### Terraform Drift
- Desired state vs actual state
- Detecting infrastructure drift
- Using terraform plan to identify drift
- Understanding manual changes outside Terraform

### Dynamic Blocks
- Dynamic nested blocks
- for_each inside dynamic blocks
- Difference between for_each and dynamic blocks

### Terraform Provisioners
- local-exec
- remote-exec
- file provisioner
- Why provisioners should generally be a last resort
- User Data / cloud-init as a preferred EC2 bootstrap approach

### Terraform Best Practices
- Reusable modules
- Environment separation
- Remote state
- State locking
- Consistent naming
- Common tagging
- Sensitive variables
- .gitignore
- terraform fmt
- terraform validate
- terraform plan
- Infrastructure refactoring

## Key Learning

Terraform should be treated as a desired-state Infrastructure as Code tool.

The preferred workflow is:

Code
→ fmt
→ validate
→ plan
→ review
→ apply
→ verify

Advanced state operations such as import, state mv and state rm should be used carefully because they directly affect Terraform state management.

## Terraform Status

Terraform learning is now complete.

Next major topic:
GitHub Actions → CI/CD
