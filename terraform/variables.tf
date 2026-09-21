variable "snowflake_account" {
	description = "Snowflake account identifier used by the provider."
	type        = string
}

variable "snowflake_organization" {
	description = "Snowflake organization identifier used by the provider."
	type        = string
}

variable "snowflake_role" {
	description = "Snowflake role used by Terraform."
	type        = string
}

variable "platform_role_name" {
	description = "Name of the Terraform-managed Snowflake platform role."
	type        = string
}
