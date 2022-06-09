terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0"
    }
  }
}


provider "aws" {
  region = "eu-west-2"
  access_key = "very-secret-key"
  secret_key = "another-very-secret-key"
}

resource "aws_instance" "app_server" {
  ami = "ami-0a244485e2e4ffd03"
  instance_type = "t2.micro"

  tags = {
    name = "app_server_ec2"
    description = "infrastructure module for logamic interview"
  }
}