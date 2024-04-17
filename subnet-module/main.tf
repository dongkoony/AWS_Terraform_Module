# subnet-module/main.tf
resource "aws_subnet" "public_subnet_a" {
  vpc_id            = var.vpc_id
  cidr_block        = var.public_subnet_a_cidr
  availability_zone = "${var.region}a"

  tags = {
    Name = "Public Subnet A"
  }
}

resource "aws_subnet" "public_subnet_c" {
  vpc_id            = var.vpc_id
  cidr_block        = var.public_subnet_c_cidr
  availability_zone = "${var.region}c"

  tags = {
    Name = "Public Subnet C"
  }
}

resource "aws_subnet" "private_subnet_a" {
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet_a_cidr
  availability_zone = "${var.region}a"

  tags = {
    Name = "Private Subnet A"
  }
}

resource "aws_subnet" "private_subnet_c" {
  vpc_id            = var.vpc_id
  cidr_block        = var.private_subnet_c_cidr
  availability_zone = "${var.region}c"

  tags = {
    Name = "Private Subnet C"
  }
}

resource "aws_subnet" "db_subnet_a" {
  vpc_id            = var.vpc_id
  cidr_block        = var.db_subnet_a_cidr
  availability_zone = "${var.region}a"

  tags = {
    Name = "DB Subnet A"
  }
}

resource "aws_subnet" "db_subnet_c" {
  vpc_id            = var.vpc_id
  cidr_block        = var.db_subnet_c_cidr
  availability_zone = "${var.region}c"

  tags = {
    Name = "DB Subnet C"
  }
}

