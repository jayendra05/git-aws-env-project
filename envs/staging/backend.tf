terraform {
  backend "s3" {
    bucket = "terraform-state-jayendra"
    key    = "staging/terraform.tfstate"
    region = "ap-south-1"
  }
}