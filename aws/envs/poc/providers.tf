locals {
  default_tags = { "created_by" = "Terraform",
                   "owner" = "Matteo" }
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
  }

  backend "s3" {
    bucket = "poc-matteo-terraform-state-files"
    region = "eu-west-2"
  }

}

provider "aws" {
  alias = "POC"
  region = "eu-west-2"
  default_tags {
    tags = local.default_tags
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

