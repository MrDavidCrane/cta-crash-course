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

variable "tags" {
	type = map(string)
}

module "aws_ec2_cluster" {
	source = "./modules/ec2"
	tags = var.tags
}
