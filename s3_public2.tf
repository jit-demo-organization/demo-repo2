resource "aws_s3_bucket" "example" {
  bucket = "my-example-bucket"
}

resource "aws_s3_bucket_website_configuration" "example" {
  bucket = aws_s3_bucket.example.id
}
