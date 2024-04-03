resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket"
}

resource "aws_s3_bucket_cors_configuration" "example_cors" {
  bucket = aws_s3_bucket.example_bucket.id

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["GET", "POST", "PUT", "DELETE"]
    allowed_origins = ["*"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }
}
