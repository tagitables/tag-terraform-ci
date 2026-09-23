terraform {
  backend "s3" {
    bucket = "sctp-tfstate-ce13"
    key    = "tag/devsecops-3.2/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "workshop" {
  bucket_prefix = "tag-terraform-ci-"

  tags = {
    Purpose = "github-actions-workshop"
  }
}
