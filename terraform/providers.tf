provider "snowflake" {
    authenticator     = "WORKLOAD_IDENTITY"
    account_name      = var.snowflake_account
    organization_name = var.snowflake_organization
    role              = var.snowflake_role
}