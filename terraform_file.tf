 resource "aws_s3_bucket" "bucket1" {
  lifecycle_rule {
    id      = "terraform_file.tf"
    prefix  = "terraform_file.tf/"
    enabled = true
    expiration {
      days = 10
    }
 }
   bucket = "example"
 }
 
 resource "aws_s3_bucket_public_access_block" "bucket1_access_block" {
   bucket = aws_s3_bucket.example.id
 
   block_public_acls   = true
   block_public_policy = true
   ignore_public_acls  = true
 }
