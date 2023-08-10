terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.11.0"
    }
  }
}
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA4SRGDS5XOCRD3FUE"
  secret_key = "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"
}
resource "aws_instance" "s1" {
  ami           = "ami-0f34c5ae932e6f0e4"
  instance_type = "t2.micro"

  tags = {
    Name = "server1"
  }
}