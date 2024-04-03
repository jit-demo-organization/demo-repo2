resource "aws_s3_bucket" "example" {
  bucket = "my-example-bucket"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}
