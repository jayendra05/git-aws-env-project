terraform {
  backend "s3" {
    bucket         = "terraform-state-jayendra"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"

    # Enable state locking
    dynamodb_table = "terraform-locks"

    # Recommended security settings
    encrypt        = true
  }
}