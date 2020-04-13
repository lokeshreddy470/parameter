provider "aws" {
  region = "us-east-1"
}

locals {
  description = coalesce(var.description, "Database parameter group for ${var.identifier}")
}

module "db_parameter_group" {
  source = "../"

  create          = var.create_db_parameter_group
  identifier      = var.identifier
  name            = var.name
  description     = var.description
  #name_prefix     = "${var.identifier}-"
  #use_name_prefix = var.use_parameter_group_name_prefix
  family          = var.family

  parameters = var.parameters

  tags = var.tags
}
