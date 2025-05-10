terraform {
  required_version = ">= 1.0"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = ">= 3.0"
    }
  }
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "name_prefix" {
  type    = string
  default = "example"
}

variable "resource_type" {
  type    = string
  default = "test"
}

locals {
  resource_name = "${var.name_prefix}-${var.resource_type}-${var.environment}"
}

resource "null_resource" "example" {
  triggers = {
    name = local.resource_name
  }
}

output "resource_name" {
  value = local.resource_name
}
