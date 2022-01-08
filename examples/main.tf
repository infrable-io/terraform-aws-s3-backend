# -----------------------------------------------------------------------------
# AMAZON S3 BUCKET AND DYNAMODB TABLE FOR STORING TERRAFORM STATE
# -----------------------------------------------------------------------------
provider "aws" {
  region = "us-east-1"
}

module "s3_backend" {
  source         = "../../terraform-aws-s3-backend"
  s3_bucket      = "s3-bucket"
  dynamodb_table = "dynamodb-table"
}
