# test/main.tf
module "ec2_instance" {
  source = "../ec2-module"

  instance_type = "t2.micro"
  ami_owner     = var.ami_owners["Ubuntu"]
  key_pair      = var.key_pair
  vpc_id        = "vpc-0e56c3187862d5bd2"
} 