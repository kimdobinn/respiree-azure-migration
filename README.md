<<<<<<< HEAD
# RespireeAzure
=======
# Azure Terraform Infra Setup (from AWS Migration)

## Summary
This project replicates a real-world cloud migration I worked on, where an entire AWS backend infrastructure was rebuilt from scratch using Azure Terraform resources.

## Modules
- Virtual Network (VNet)
- Subnets & NSGs
- Virtual Machines (Linux)
- PostgreSQL Flexible Server
- Azure Storage Account
- Private DNS + Delegated Subnets
- Key Vault + Secrets Management

## Highlights
- Fully modular structure using Terraform
- Follows best practices for resource grouping and reusability
- Handles production/staging environment configuration with `terraform.tfvars`
- Uses separate state files for each environment
- Rewritten from scratch based on AWS → Azure service mapping


This repository is a personal recreation. It does not contain or reflect any company-sensitive or proprietary data.
>>>>>>> db5756308a14e7e6b506190508a91a284622f747
