variable "tags" {
  type = map(string)
  default = {
		Name = "Dave's App Server"
	}
}

resource "aws_instance" "app_server" {
  ami           = "ami-077ee47512dc6f3ca"
  instance_type = "t2.nano"
  tags = var.tags
}
