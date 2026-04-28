provider "aws" {
  region = "ap-south-1"
}

module "vpc1" {
  source     = "../../modules/vpc"
  cidr_block = "172.3.0.0/16"
  vpc_name   = "prod-vpc-1"
}

module "subnet1" {
  source      = "../../modules/subnet"
  vpc_id      = module.vpc1.vpc_id
  cidr_block  = "172.3.1.0/24"
  subnet_name = "prod-subnet-1"
}


module "subnet2" {
  source      = "../../modules/subnet"
  vpc_id      = module.vpc1.vpc_id
  cidr_block  = "172.3.2.0/24"
  subnet_name = "prod-subnet-2"
}