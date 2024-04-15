variable "instance_type" {
  description = "EC2 인스턴스 유형"
  type        = string
  default     = "t2.micro"
}

variable "key_pair" {
  description = "EC2 인스턴스에 접근할 키 페어 이름"
  type        = string
}

variable "root_volume_size" {
  description = "EC2 인스턴스 루트 볼륨 크기(GB)"
  type        = number
  default     = 30
}

variable "instance_name" {
  description = "EC2 인스턴스 이름"
  type        = string
  default     = "my-ec2-instance"
}

variable "vpc_id" {
  description = "EC2 인스턴스가 속할 VPC ID"
  type        = string
}

variable "ingress_rules" {
  description = "EC2 인스턴스 보안 그룹 인그레스 규칙"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 8080
      to_port     = 8080
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}