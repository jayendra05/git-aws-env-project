provider "aws" {
  region = "ap-south-1"
}

# VPC 1
module "vpc1" {
  source     = "../../modules/vpc"
  cidr_block = "10.0.0.0/16"
  vpc_name   = "dev-vpc-1"
}

# Subnet for VPC 1
module "subnet1" {
  source      = "../../modules/subnet"
  vpc_id      = module.vpc1.vpc_id
  cidr_block  = "10.0.1.0/24"
  subnet_name = "dev-subnet-1"
}

# VPC 2
module "vpc2" {
  source     = "../../modules/vpc"
  cidr_block = "10.1.0.0/16"
  vpc_name   = "dev-vpc-2"
}

# Subnet for VPC 2
module "subnet2" {
  source      = "../../modules/subnet"
  vpc_id      = module.vpc2.vpc_id
  cidr_block  = "10.1.1.0/24"
  subnet_name = "dev-subnet-2"
}

# VPC 3
module "vpc2" {
  source     = "../../modules/vpc"
  cidr_block = "10.2.0.0/16"
  vpc_name   = "dev-vpc-3"
}

# Subnet for VPC 3
module "subnet2" {
  source      = "../../modules/subnet"
  vpc_id      = module.vpc2.vpc_id
  cidr_block  = "10.2.1.0/24"
  subnet_name = "dev-subnet-3"
}