terraform {
      required_providers {
        snowflake = {
            source = "snowflakedb/snowflake"
        }
      }
}
resource "snowflake_account_role" "tf_platform_role" {
    name = "TF_PLATFORM_ROLE_V1"
}