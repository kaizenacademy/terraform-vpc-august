provider aws {
    region = var.region
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet1_cidr
  availability_zone = "${var.region}a"
  map_public_ip_on_launch = var.ip_on_launch

  tags = {
    Name = "subnet1"
  }
}

resource "aws_subnet" "main2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet2_cidr
  availability_zone = "${var.region}b"
  map_public_ip_on_launch = var.ip_on_launch

  tags = {
    Name = "subnet2"
  }
}

resource "aws_subnet" "main3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet3_cidr
  availability_zone = "${var.region}c"
  map_public_ip_on_launch = var.ip_on_launch

  tags = {
    Name = "subnet3"
  }
}