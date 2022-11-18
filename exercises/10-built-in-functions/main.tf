terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.16.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

variable "instance_count" {
    type = set(string)
    description = "The number of EC2 instances to be managed."
    default = ["1","2","3"]
}

resource "aws_instance" "app_server" {
	for_each = var.instance_count
  ami           = "ami-077ee47512dc6f3ca"
  instance_type = "t2.nano"
  tags = {
    Name = "Dave Ex 10 - instance ${each.key}"
  }
}
