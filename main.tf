terraform {
  required_version = ">= 1.0"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "example" {
  bucket = "example"
  tags = {
    Project     = "naming-test"
  }
}

module "foo" {
  source = "./foo"
}