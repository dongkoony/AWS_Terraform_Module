# subnet-module/variables.tf

variable "vpc_id" {
  description = "서브넷이 속할 VPC의 ID"
  type        = string
}

variable "region" {
  description = "서브넷이 생성될 리전"
  type        = string
}

variable "public_subnet_a_cidr" {
  description = "Public Subnet A의 CIDR 블록"
  type        = string
}

variable "public_subnet_c_cidr" {
  description = "Public Subnet C의 CIDR 블록"
  type        = string
}

variable "private_subnet_a_cidr" {
  description = "Private Subnet A의 CIDR 블록"
  type        = string
}

variable "private_subnet_c_cidr" {
  description = "Private Subnet C의 CIDR 블록"
  type        = string
}

variable "db_subnet_a_cidr" {
  description = "DB Subnet A의 CIDR 블록"
  type        = string
}

variable "db_subnet_c_cidr" {
  description = "DB Subnet C의 CIDR 블록"
  type        = string
}