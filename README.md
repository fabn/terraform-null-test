# Terraform test

This repository is a test project for publishing a Terraform module.  
The main goal is to explore and define consistent and reusable naming conventions for infrastructure resources.

## Overview

The module includes simple Terraform resources with parameterized names, used to evaluate:

- Consistent structures across environments (dev, staging, prod)
- Use of prefixes and suffixes
- Resource naming clarity in cloud providers

## Usage

You can use the module locally with Terraform:

```hcl
module "example" {
  source        = "./path/to/terraform-naming-test"

  environment   = "dev"
  name_prefix   = "app"
  resource_type = "bucket"
}
```
