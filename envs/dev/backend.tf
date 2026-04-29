terraform {
  backend "s3" {
    bucket         = "terraform-state-jayendra"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}