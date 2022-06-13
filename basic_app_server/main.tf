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
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.app_server_security_group.id]

  user_data = templatefile("${path.module}/server.sh", {
    environment = var.environment
    server_port = var.server_port
  })

  tags = {
    Name = "app_server_ec2"
    Description = "infrastructure module for logamic interview"
    Environment = var.environment
    Company = var.company
  }
}

# By default no traffic is allowed incoming/outgoing from EC2
# therefore, configure a security_group to allow traffic on port var.server_port

resource "aws_security_group" "app_server_security_group" {
  name = "app_server_security_group"

  ingress {
    protocol = "tcp"
    from_port = var.server_port
    to_port = var.server_port
    cidr_blocks = ["0.0.0.0/0"]
  }
}

