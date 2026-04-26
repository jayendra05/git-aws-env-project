provider "aws" {
  region = "ap-south-1"
}

module "vpc1" {
  source     = "../../modules/vpc"
  cidr_block = "192.2.0.0/16"
  vpc_name   = "staging-vpc-1"
}

module "subnet1" {
  source      = "../../modules/subnet"
  vpc_id      = module.vpc1.vpc_id
  cidr_block  = "192.2.1.0/24"
  subnet_name = "staging-subnet-1"
}