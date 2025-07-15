# VPC
resource "aws_vpc" "login-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "lms-vpc"
  }
}

# web Subnet
resource "aws_subnet" "lms-web-subnet" {
  vpc_id           = aws_vpc_login_vpc.id
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "lms-web-subnet"
  }
}