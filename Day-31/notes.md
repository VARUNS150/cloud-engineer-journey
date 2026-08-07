# Day 31 - Terraform Modules Integration

## Topics Covered

- Security Group Module
- Key Pair Module
- EC2 Module
- Module Variables
- Module Outputs
- Root Module Integration
- Data Flow Between Modules
- file() Function
- merge() Function
- Module Source Paths

## Modules Created

modules/
├── security-group
├── keypair
└── ec2

## Root Module

- Module Calls
- Passing Variables
- Using Module Outputs
- Data Source Integration

## Terraform Functions

- file()
- merge()

## Important Learnings

- Root Module orchestrates child modules.
- Child modules never communicate directly.
- Outputs from one module become inputs to another through the root module.
- Module paths depend on project structure.
- Always run `terraform init` after adding or changing modules.

## Common Errors Fixed

- Module path issue (`./modules` vs `../modules`)
- Missing quotation mark
- Terraform syntax validation
- Module initialization

## Progress

Bootstrap ✅
Infrastructure Foundation ✅
Security Group Module ✅
Key Pair Module ✅
EC2 Module ✅
Root Module Integration ✅
Terraform Validate ✅
Terraform Plan ✅

Next:
- Terraform Apply
- EC2 Launch
- AWS Verification
- User Data
- Nginx Deployment
