Day -23
locals and data source
# Day 23 - Data Sources, Locals & Functions

## Topics
- Data Sources
- Dynamic AMI
- Locals
- Terraform Functions
- Dynamic Naming
- Best Practices

## Commands

```bash
terraform fmt
terraform validate
terraform plan
terraform console
```

## Functions
- file()
- upper()
- lower()
- length()
- join()
- split()

## Notes
- Data Sources read existing infrastructure or cloud information.
- `aws_ami` fetches the latest official Ubuntu AMI.
- `most_recent = true` selects the latest matching AMI.
- `owners` ensures Terraform uses the official publisher.
- Locals store reusable internal values.
- Variables are for configurable input values.
- Functions manipulate values inside Terraform.
- Dynamic naming improves code maintainability.

✅ Day 23 Completed
