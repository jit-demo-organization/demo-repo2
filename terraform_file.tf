 resource "aws_s3_bucket" "bucket1" {
   bucket = "example"
 }
 
 resource "aws_s3_bucket_public_access_block" "bucket1_access_block" {
   bucket = aws_s3_bucket.example.id
 
   block_public_acls   = true
   block_public_policy = false
   ignore_public_acls  = true
 }
