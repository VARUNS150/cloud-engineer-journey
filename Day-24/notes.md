# Day 24 - Terraform Modules

## Topics Covered

- Introduction to Modules
- Why Modules?
- Module Structure
- Module Variables
- Passing Values to Modules
- Module Outputs
- Module Reusability
- Best Practices

## Project Structure

project/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── locals.tf
│
└── modules/
    └── ec2/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf

## Module Flow

Root Module
        ↓
Pass Variables
        ↓
Module Variables
        ↓
EC2 Resource
        ↓
Module Outputs
        ↓
Root Outputs

## Advantages

- Reusability
- Maintainability
- Cleaner Code
- Less Duplication
- Easy Updates

## Interview Points

- Module = Reusable Infrastructure
- Module works like a Function.
- Variables are Inputs.
- Outputs are Return Values.
- Root Module calls Child Modules.

✅ Day 24 Completed
