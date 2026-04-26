provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source     = "../../modules/vpc"
  cidr_block = "10.0.0.0/16"
  vpc_name   = "dev-vpc"
}

module "subnet" {
  source      = "../../modules/subnet"
  vpc_id      = module.vpc.vpc_id
  cidr_block  = "10.0.1.0/24"
  subnet_name = "dev-subnet"
}

module "ec2" {
  source         = "../../modules/ec2"
  ami            = "ami-0abcdef1234567890"
  instance_type  = "t2.micro"
  subnet_id      = module.subnet.subnet_id
  name           = "dev-vm"
}