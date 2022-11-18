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
  ami           = var.ami_id
  instance_type = var.ami_instance_type
	tags = var.ami_tags
  vpc_security_group_ids = [data.aws_security_group.instance-connect.id]
}

