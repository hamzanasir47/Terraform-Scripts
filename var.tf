variable "REGION" {
  default = "us-east-1"
}

variable "ZONE" {
  default = "us-east-2a"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-2 = "ami-0862be96e41dcbf74"
  }
}

variable "KEYPAIR" {
	default = "dove.key"
}
