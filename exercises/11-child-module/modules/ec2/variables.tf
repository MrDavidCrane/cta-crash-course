variable "aws_ami" {
	type = string
	default = "ami-077ee47512dc6f3ca"
}

variable "aws_tags" {
	type = map(string)
	default = {
		Name = "Dave's AMI"
	}
}
