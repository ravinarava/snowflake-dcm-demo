# Snowflake CI/CD Architecture

## Authentication Layer

GitHub OIDC

## Foundation Layer (Terraform)

DEV Terraform owner: `GITHUB_DEV_TERRAFORM_SVC`

TEST Terraform owner: `GITHUB_TEST_TERRAFORM_SVC`

Terraform manages:

- Service Users
- OIDC Configuration
- Security Integrations
- Storage Integrations
- Network Policies
- AWS Resources
- Azure Resources

## Object Layer (DCM)

DEV DCM owner: `GITHUB_DEV_DCM_SVC`

TEST DCM owner: `GITHUB_TEST_DCM_SVC`

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

## Current Operating Notes

- Terraform currently uses local state. An S3 backend is planned.
- The deployment workflows import the existing foundation role because GitHub runners are ephemeral.
- DEV and TEST currently target the same Snowflake database and account.
- `ACCOUNTADMIN` is temporarily used by Terraform and should be replaced with least-privilege roles.
- Pull requests validate DEV by default; TEST validation is available through manual workflow dispatch.