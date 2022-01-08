# AWS S3 Backend Terraform Module

[![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)](https://github.com/infrable-io/terraform-aws-s3-backend/blob/master/LICENSE)
[![Maintained by Infrable.io](https://img.shields.io/badge/Maintained%20by-Infrable.io-000000)](https://infrable.io)

A Terraform module for creating an Amazon S3 bucket and DynamoDB table for storing Terraform state.

## Overview

From the Terraform documentation on [S3 backends](https://www.terraform.io/language/settings/backends/s3)...

>Stores the state as a given key in a given bucket on [Amazon S3](https://aws.amazon.com/s3). This backend also supports state locking and consistency checking via [DynamoDB](https://aws.amazon.com/dynamodb), which can be enabled by setting the `dynamodb_table` field to an existing DynamoDB table name.

## Usage

```hcl
terraform {
  backend "s3" {
    bucket         = "<s3_bucket>"
    key            = "<path/to/key>"
    region         = "us-east-1"
    dynamodb_table = "<dynamodb_table>"
  }
}
```

## Chicken and Egg Problem

Where does one store the Terraform state of the infrastructure for storing Terraform state? Answer: locally. Before using the Amazon S3 bucket and DynamoDB table created by this module to store its own state, you must first store state on the local filesystem. Thereafter, state can be stored using the S3 backend.
