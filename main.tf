terraform {

  required_providers {

    aws = {

      source = "hashicorp/aws"

    }

  }

  required_version = ">= 0.12"

}

provider "aws" {

  region = "ap-south-1"
}

resource "aws_s3_bucket" "terraform-poc-bucket" {

  #bucket_prefix = var.bucket_prefix
  bucket = "terraform-rak-mobilitybucket"

  acl = "private"
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags

}
