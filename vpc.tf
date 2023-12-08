# CREATE - VPC
resource "aws_vpc" "tf-ecomm" {
  cidr_block       = "192.168.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "ecomm-vpc"
  }
}

# Create pub subnet - az - A
resource "aws_subnet" "tf-ecomm-pub-sn-A" {
  vpc_id     = aws_vpc.tf-ecomm.id
  cidr_block = "192.168.0.0/16"
availability_zone = "us-east-2a"
map_public_ip_on_launch = "true"

  tags = {
    Name = "ecomm-public-subnet-A"
  }
}



