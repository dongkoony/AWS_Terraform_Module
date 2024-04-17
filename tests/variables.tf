variable "ami_owners" {
  description = "AMI 소유자 ID 목록"
  type        = map(list(string))
}

variable "key_pair" {
  description = "EC2 인스턴스에 연결할 키 페어 이름"
  type        = string
}

variable "ami" {
  description = "EC2 인스턴스에 사용할 AMI ID"
  type        = string
}