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

variable "ami_owners" {
  description = "AMI 소유자 ID 목록"
  type        = map(map(list(string)))
  default = {
    "Amazon Linux" = {
      "2" = ["amazon"]
    }
    "Amazon Linux (Legacy)" = {
      "1" = ["137112412989", "591542846629", "679593333241", "099720109477"]
    }
    "Ubuntu" = {
      "20.04" = ["099720109477"]
      "22.04" = ["099720109477"]
    }
    "Red Hat Enterprise Linux" = {
      "9" = ["309956199498"]
    }
    "SUSE Linux Enterprise Server" = {
      "15 SP5" = ["013907871546", "053360076492"]
    }
    "CentOS" = {
      "7" = ["679593333241"]
    }
    "Debian" = {
      "12" = ["679593333241"]
    }
  }
}
variable "ami_owner" {
  description = "사용할 AMI 소유자 ID"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 인스턴스 유형"
  type        = string
  default     = "t2.micro"
}

# 기타 변수 정의...