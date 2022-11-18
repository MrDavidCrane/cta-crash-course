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

	tags = {
		Name = "Dave-Ex-4"
	}
	user_data = file("/home/dcrane/cta-crash-course/exercises/04-provisioner/install_apache.sh")

	vpc_security_group_ids = [data.aws_security_group.instance-connect.id]
}
