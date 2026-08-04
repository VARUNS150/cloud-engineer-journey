# Day 29 - Terraform Production Project Planning

## Topics Covered

- Why create a separate production project?
- GitHub Portfolio Structure
- Production Folder Structure
- Bootstrap Project Design
- Variables
- Locals
- S3 Backend Design
- DynamoDB State Locking
- Tags Best Practices
- Outputs Planning

## Project Structure

terraform-production-infrastructure/

bootstrap/
- versions.tf
- provider.tf
- variables.tf
- terraform.tfvars
- locals.tf
- main.tf
- outputs.tf

infrastructure/
- backend.tf
- provider.tf
- variables.tf
- terraform.tfvars
- locals.tf
- data.tf
- main.tf
- outputs.tf

modules/
- ec2
- security-group
- keypair

## Bootstrap Resources

- S3 Bucket
- Bucket Versioning
- Bucket Encryption
- DynamoDB Lock Table

## Best Practices Learned

- Separate learning repo and portfolio repo
- Use variables instead of hardcoding
- Use locals for reusable values
- Apply common tags to resources
- Keep bootstrap and infrastructure separate

## Progress

Bootstrap:
- Project Structure ✅
- Variables ✅
- Provider ✅
- Locals ✅
- S3 Bucket ✅
- Versioning ✅
- Encryption ✅
- DynamoDB ✅
- Outputs ✅

Next:
- Bootstrap Deployment
- Infrastructure Project
