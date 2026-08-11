# Day 33 - Terraform Environment Separation

## Topics Covered

- Dev / QA / Production environments
- Environment-specific configuration
- Reusable Terraform modules
- Separate Terraform state per environment
- S3 backend state keys
- DynamoDB state locking
- Environment-specific resource naming
- Environment-specific variables and tags
- Terraform plan/apply/destroy
- Infrastructure cleanup

## Environment Architecture

Same reusable modules were used for all environments:

modules/
├── ec2/
├── keypair/
└── security-group/

Environments:

environments/
├── dev/
├── qa/
└── prod/

## Remote State Separation

A single S3 bucket was used with separate state keys:

dev/terraform.tfstate
qa/terraform.tfstate
prod/terraform.tfstate

This keeps each environment's Terraform state independent.

## Important Concept

Modules are reusable infrastructure blueprints.

Environments are independent configurations that use those modules with different variables, resource names, tags and state.

## Environment Differences

DEV:
- Environment: development
- Resource names: dev-specific
- State: dev/terraform.tfstate

QA:
- Environment: qa
- Resource names: qa-specific
- State: qa/terraform.tfstate

PROD:
- Environment: production
- Resource names: prod-specific
- State: prod/terraform.tfstate

## Security

SSH access was restricted using the administrator's public IP:

YOUR_PUBLIC_IP/32

HTTP remained publicly accessible:

0.0.0.0/0

## Verification

Successfully deployed and verified:

- Development environment
- QA environment
- Production environment

All environments used the same reusable Terraform modules.

## Cleanup

After verification, Dev, QA and Production infrastructure was destroyed to avoid unnecessary AWS costs.

The Terraform bootstrap infrastructure was kept:

- S3 remote state bucket
- DynamoDB locking table

## Key Learning

Separate Terraform state protects environments from accidentally managing each other's infrastructure.

Same modules + separate configuration + separate state = reusable and isolated environments.
