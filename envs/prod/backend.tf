terraform {
  backend "s3" {
    bucket = "terraform-state-jayendra"
    key    = "prod/terraform.tfstate"
    region = "ap-south-1"
  }
}