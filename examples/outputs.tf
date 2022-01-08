# -----------------------------------------------------------------------------
# OUTPUTS
# -----------------------------------------------------------------------------
output "s3_bucket" {
  value       = module.s3_backend.s3_bucket
  description = "The name of the S3 bucket"
}

output "dynamodb_table" {
  value       = module.s3_backend.dynamodb_table
  description = "The name of the DynamoDB table"
}
