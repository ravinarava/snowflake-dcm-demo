terraform {
      required_providers {
        snowflake = {
            source = "snowflakedb/snowflake"
        }
      }
}
provider "snowflake" {
    authenticator = "WORKLOAD_IDENTITY"
    account_name = "AL32991"
    organization_name = "IVULRLR"
    user = "GITHUB_DCM_SVC"
}
resource "snowflake_account_role" "tf_platform_role" {
    name = "TF_PLATFORM_ROLE_V1"
}