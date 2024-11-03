terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.74.0"
    }
  }
}


# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0583d8c7a9c35822c"
  instance_type = "t2.micro"
  
  tags = {
    Name = "terraform-test"
  }
}