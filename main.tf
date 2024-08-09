provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_instance" "jenkins" {
  ami                         = "ami-0a0e5d9c7acc336f1"
  instance_type               = "t2.small"
  subnet_id                   = "subnet-04185ba46aff5d176"
  associate_public_ip_address = "true"
  key_name                    = "exe"
  tags = {
    Name = "Myterraforminstance"
  }
}

resource "aws_instance" "Nexus" {
  ami                         = "ami-0df2a11dd1fe1f8e3"
  instance_type               = "t2.medium"
  subnet_id                   = "subnet-04185ba46aff5d176"
  associate_public_ip_address = "true"
  key_name                    = "nexuskey"
  tags = {
    Name = "Nexus"
  }
}

resource "aws_instance" "Sonar" {
  ami                         = "ami-04a81a99f5ec58529"
  instance_type               = "t2.medium"
  subnet_id                   = "subnet-04185ba46aff5d176"
  associate_public_ip_address = "true"
  key_name                    = "Soner"
  tags = {
    Name = "SonarServer"
  }
}
