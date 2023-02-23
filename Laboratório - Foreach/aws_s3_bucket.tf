resource "aws_s3_bucket" "mybucket" {
  bucket = "BUCKET_NAME"
  tags = {
    "environment" = "dev"
  }
}