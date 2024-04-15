resource "aws_subnet" "Pub_subnet_A" {
    vpc_id            = var.vpc_id
    cidr_block        = var.pub_subnet_cidr_a
    availability_zone = var.availability_zone_a

    tags = {
        Name = "Pub_subnet_A"
    }
}

resource "aws_subnet" "Pub_subnet_C" {
    vpc_id            = var.vpc_id
    cidr_block        = var.pub_subnet_cidr_c
    availability_zone = var.availability_zone_c

    tags = {
        Name = "Pub_subnet_C"
    }
}

resource "aws_subnet" "Pri_subnet_A" {
    vpc_id            = var.vpc_id
    cidr_block        = var.pri_subnet_cidr_a
    availability_zone = var.availability_zone_a

    tags = {
        Name = "Pri_subnet_A"
    }
}

resource "aws_subnet" "Pri_subnet_C" {
    vpc_id            = var.vpc_id
    cidr_block        = var.pri_subnet_cidr_c
    availability_zone = var.availability_zone_c

    tags = {
        Name = "Pri_subnet_C"
    }
}

resource "aws_subnet" "RDS_Subnet_A" {
    vpc_id            = var.vpc_id
    cidr_block        = var.rds_subnet_cidr_a
    availability_zone = var.availability_zone_a

    tags = {
        Name = "RDS_Subnet_A"
    }
}

resource "aws_subnet" "RDS_Subnet_C" {
    vpc_id            = var.vpc_id
    cidr_block        = var.rds_subnet_cidr_c
    availability_zone = var.availability_zone_c

    tags = {
        Name = "RDS_Subnet_C"
    }
}
