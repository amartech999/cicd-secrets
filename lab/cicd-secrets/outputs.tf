output "region_used" {
  value = data.aws_region.current.name
}

output "bucket_name" {
  value = aws_s3_bucket.demo_bucket.bucket
}

output "instance_id" {
  value = aws_instance.demo_instance.id
}

output "db_secret_name" {
  value = data.aws_secretsmanager_secret.db_secret.name
}
