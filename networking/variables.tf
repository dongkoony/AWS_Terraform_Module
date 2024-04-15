variable "vpc_id" {
    description = "VPC의 ID && VPC ID"
    type        = string
}

variable "availability_zone_a" {
    description = "가용 영역 A && Availability zone A"
    type        = string
}

variable "availability_zone_c" {
    description = "가용 영역 C && Availability zone C"
    type        = string
}

variable "pub_subnet_cidr_a" {
    description = "퍼블릭 서브넷 가용 영역 A의 CIDR 블록 && CIDR block for Public Subnet in availability zone A"
    type        = string
}

variable "pub_subnet_cidr_c" {
    description = "퍼블릭 서브넷 가용 영역 C의 CIDR 블록 && CIDR block for Public Subnet in availability zone C"
    type        = string
}

variable "pri_subnet_cidr_a" {
    description = "프라이빗 서브넷 가용 영역 A의 CIDR 블록 && CIDR block for Private Subnet in availability zone A"
    type        = string
}

variable "pri_subnet_cidr_c" {
    description = "프라이빗 서브넷 가용 영역 C의 CIDR 블록 && CIDR block for Private Subnet in availability zone C"
    type        = string
}

variable "rds_subnet_cidr_a" {
    description = "RDS 서브넷 가용 영역 A의 CIDR 블록 && CIDR block for RDS Subnet in availability zone A"
    type        = string
}

variable "rds_subnet_cidr_c" {
    description = "RDS 서브넷 가용 영역 C의 CIDR 블록 && CIDR block for RDS Subnet in availability zone C"
    type        = string
}

variable "vpc_cidr_block" {
    description = "VPC의 CIDR 블록 && CIDR block for VPC"
    type        = string
}

variable "vpc_tags" {
    description = "VPC에 적용할 태그 && Tags to apply to VPC"
    type        = map(string)
    default     = {
        Name = "DefaultVPCName"
    }
}
