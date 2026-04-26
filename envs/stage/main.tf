provider "aws" {
  region = "ap-south-1"
}

module "rg" {
  source = "../../modules/resource_group"

  name        = "stage-resource-group"
  environment = "stage"
}