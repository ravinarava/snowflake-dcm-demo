provider "snowflake" {
    authenticator = "WORKLOAD_IDENTITY"
    account_name = "AL32991"
    organization_name = "IVULRLR"
  

    role = "ACCOUNTADMIN"
}