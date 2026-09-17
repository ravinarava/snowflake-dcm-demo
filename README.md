# Snowflake CI/CD Architecture

## Authentication

GitHub OIDC
    ↓
Snowflake Service User

## Terraform Ownership

Terraform manages:

- Service Users
- Security Integrations
- Storage Integrations
- Network Policies

## DCM Ownership

DCM manages:

- Databases
- Schemas
- Tables
- Roles
- Grants

## CI Validation

- Terraform Plan
- DCM Plan

## Deployment

- Terraform Apply
- DCM Deploy