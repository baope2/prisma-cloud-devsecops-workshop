provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "a7728896-c382-45e5-8f25-36c2c9e4ada7"
    git_commit           = "ad3c3c6813b37baa1710ce2435d7ec5d3ceca202"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-06-11 16:14:39"
    git_last_modified_by = "104657805+baope2@users.noreply.github.com"
    git_modifiers        = "104657805+baope2"
    git_org              = "baope2"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
