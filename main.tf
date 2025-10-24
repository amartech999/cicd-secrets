# Data source to fetch AWS region
data "aws_region" "current" {}

# Data source to get latest Amazon Linux AMI
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# Create an S3 bucket
resource "aws_s3_bucket" "demo_bucket" {
  bucket = var.bucket_name
  tags = {
    Environment = "Dev22"
  }
}

# Create an EC2 instance using the AMI data source
resource "aws_instance" "demo_ec2" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformDemoInstance"
  }
}
