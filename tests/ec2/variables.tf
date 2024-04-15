# variables.tf
variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "instance_tags_name" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "example-instance"
}