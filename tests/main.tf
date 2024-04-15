# main.tf
module "networking" {
  source = "./networking"
}

module "ec2" {
  source = "./ec2"

  ami               = "ami-09a7535106fbd42d5" # Ubuntu Server 22.04 LTS (HVM), SSD Volume Type
  instance_type     = "t2.micro"
  instance_tags_name = "MyEC2Instance"
}