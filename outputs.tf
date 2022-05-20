output "s3_bucket_name" {
  value = aws_s3_bucket.terraform-poc-bucket.id
}
output "s3_bucket_region" {
    value = aws_s3_bucket.terraform-poc-bucket.region
}
