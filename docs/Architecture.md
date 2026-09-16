# Snowflake CI/CD Architecture

## Authentication Layer

GitHub OIDC

## Foundation Layer (Terraform)

Owner: GITHUB_TERRAFORM_SVC

Terraform manages:

- Service Users
- OIDC Configuration
- Security Integrations
- Storage Integrations
- Network Policies
- AWS Resources
- Azure Resources

## Object Layer (DCM)

Owner: GITHUB_DCM_SVC

DCM manages:

- Databases
- Schemas
- Tables
- Views
- Warehouses
- Roles
- Grants
- Tasks
- Streams

## CI Validation

- Terraform Plan
- DCM Plan

## Deployment

- Terraform Apply
- DCM Deploy