variable "ami_instance_type" {
	type = string
	description = "AWS Instance Type e.g. t2.nano (default)"
  default = "t2.nano"
  nullable = false
}

variable "ami_id" {
	type = string
	description = "AWS Instance Type e.g. ami-077ee47512dc6f3ca"
  default = "ami-077ee47512dc6f3ca"
  nullable = false
}

variable "ami_tags" {
	type = map(string)
	description = "The tags to be used for the AMI"
}
