terraform {
  backend "s3" {
    bucket = "terraform-state-kblo"
    key    = "homolog/terraform.tfstate"
    region = "us-east-2"
  }
}