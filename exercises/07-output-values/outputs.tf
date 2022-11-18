output "ip_address" {
  value = aws_instance.app_server.public_ip
	description = "The public IP address of the aws instance"
}
