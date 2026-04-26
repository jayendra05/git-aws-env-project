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