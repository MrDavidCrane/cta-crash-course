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

resource "aws_instance" "app_server" {
  ami           = "ami-077ee47512dc6f3ca"
  instance_type = "t2.nano"
	count = var.instance_count
	tags = {
		Name = "Dave Ex 9 - ${count.index}"
	}
}

variable "instance_count" {
	type = number
  default = 3
}
