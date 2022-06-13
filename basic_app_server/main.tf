terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.0"
    }
  }
}


# Configure the EC2 INSTANCE

resource "aws_instance" "app_server" {
  ami = var.ami_id
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.app_server_security_group.id]

  tags = {
    Name = "app_server_ec2"
    Description = "infrastructure module for logamic interview"
    Environment = var.environment
  }
}

resource "aws_security_group" "app_server_security_group" {
  name = "app_server_security_group"

  ingress {
    protocol = "HTTP"
    from_port = var.server_port
    to_port = var.server_port
    cidr_blocks = ["0.0.0.0/0"]
  }
}

