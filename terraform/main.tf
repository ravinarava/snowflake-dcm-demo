terraform {
      required_providers {
        snowflake = {
            source = "snowflake-labs/snowflake"
        }
      }
}
resource "snowflake_account_role" "tf_platform_role" {
    name = "TF_PLATFORM_ROLE"
}