terraform {
  backend "s3" {
    bucket = "terraform-state-jayendra"
    key    = "stage/terraform.tfstate"
    region = "ap-south-1"
  }
}