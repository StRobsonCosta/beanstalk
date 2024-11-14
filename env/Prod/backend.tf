terraform {
  backend "s3" {
    bucket = "terraform-state-kblo"
    key    = "Prod/terraform.tfstate"
    region = "us-east-2"
  }
}