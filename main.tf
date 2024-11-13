provider "aws" {
  region = "us-east-1"  # Set your preferred AWS region
}

# EC2 Instance Configuration
resource "aws_instance" "my_ec2" {
  ami           = "ami-063d43db0594b521b"  # Replace with the actual AMI ID you want to use
  instance_type = "t2.micro"             # Free-tier eligible instance type
  tags = {
    Name = "noerrrorplease"              # Tag to identify the EC2 instance
  }
}

# S3 Bucket Configuration
resource "aws_s3_bucket" "my_bucket" {
  bucket = "whyerror"     # Use a globally unique name for your S3 bucket
  acl    = "private"                   # Set bucket ACL to private for security
}
