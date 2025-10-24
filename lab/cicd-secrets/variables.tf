variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "secret_name" {
  description = "Secret name in AWS Secrets Manager"
  type        = string
  default     = "demo/db_credentials"
}
