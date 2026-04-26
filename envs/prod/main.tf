provider "aws" {
  region = "ap-south-1"
}

module "rg" {
  source = "../../modules/resource_group"

  name        = "prod-resource-group"
  environment = "prod"
}