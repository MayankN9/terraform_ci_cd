
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  required_version = ">= 1.6.0"
}

provider "aws" {
  region = var.aws_region

  # Optional: default tags everywhere – only if you want them
  # default_tags {
  #   tags = local.tags
  # }
}
