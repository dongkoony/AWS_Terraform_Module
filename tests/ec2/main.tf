# main.tf
module "networking" {
  source = "../networking"
}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = module.networking.subnet_id
  vpc_security_group_ids = [module.networking.security_group_id]

  tags = {
    Name = var.instance_tags_name
  }
}

