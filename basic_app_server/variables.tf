# Required parameters to be set by module user

variable "ami_id" {
  description = "The ami you want to use for the EC2 instance"
}


variable "environment" {
  description = "This variable should hold the environment currently being configured (dev, prod)"
}

# Optional parameters, which have defaults

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default = 8080
}
