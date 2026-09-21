resource "snowflake_account_role" "tf_platform_role" {
    name = var.platform_role_name
}