resource "aws_s3_bucket" "example" {
  bucket = "my-example-bucket"
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}
