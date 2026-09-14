terraform {
      required_providers {
        snowflake = {
            source = "snowflake-labs/snowflake"
        }
      }
}
provider "snowflake" {
    account_name = "AL32991"
    organization_name = "IVULRLR"
}
resource "snowflake_account_role" "tf_platform_role" {
    name = "TF_PLATFORM_ROLE"
}