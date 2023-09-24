# Configure the AWS provider
provider "aws" {
  region = "eu-central-1"
}

# Create a bucket in S3
resource "aws_s3_bucket" "devops_project" {
  bucket = "devops-project-frankfurt"
  tags = {
    Name = "DevOps_project"
  } 
}

# Enable Bucket versioning
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.devops_project.id
  versioning_configuration {
    status = "Enabled"
  }
}
