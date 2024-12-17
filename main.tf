provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "Bayer_practice" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "Bayer_practice"
  }
}

resource "aws_subnet" "subnet_Bayer_practice" {
  vpc_id                  = aws_vpc.Bayer_practice.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "public-subnet"
  }
}

resource "aws_internet_gateway" "igw_bayer_practice" {
  vpc_id = aws_vpc.Bayer_practice.id
  tags = {
    Name = "main-igw"
  }
}
