terraform {
  backend "s3" {
    bucket = "pyupdate"
    key    = "meuteste/terraform.tfstate"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.16.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region     = var.region
}
