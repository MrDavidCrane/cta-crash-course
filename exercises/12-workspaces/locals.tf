locals {
	instance_config = {
		dev = {
			instance_type = "t2.nano"
			tags = {
				Environment = "Develop"
			}
		}
		prod = {
			instance_type = "t2.micro"
			tags = {
				Environment = "Production"
			}
		}
	}
}
