# -----------------------------------------------------------------------------
# OUTPUTS
# -----------------------------------------------------------------------------
output "s3_bucket" {
  value       = module.s3_backend.aws_s3_bucket.s3_bucket.id
  description = "The name of the S3 bucket"
}

output "dynamodb_table" {
  value       = module.s3_backend.aws_dynamodb_table.dynamodb_table.id
  description = "The name of the DynamoDB table"
}
