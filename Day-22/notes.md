# Day 22 - Terraform Security Groups & Dependencies

## Topics
- Security Groups
- Inbound Rules
- Outbound Rules
- Key Pair
- Resource References
- Implicit Dependency
- Explicit Dependency
- Dependency Graph
- Parallel Execution

## Commands

```bash
ssh-keygen -t rsa -b 4096 -f terraform-key

terraform fmt
terraform validate
terraform plan
terraform apply

terraform graph
terraform output
```

## Notes
- Security Group acts as a virtual firewall for EC2.
- Inbound rules control incoming traffic.
- Outbound rules control outgoing traffic.
- `0.0.0.0/0` allows access from any IPv4 address.
- EC2 references Security Group using:
  `aws_security_group.web_sg.id`
- Terraform automatically detects dependencies through resource references.
- Independent resources are created in parallel.
- `depends_on` is used only when Terraform cannot infer dependencies.
- Terraform builds a Dependency Graph before execution.

✅ Day 22 Completed

