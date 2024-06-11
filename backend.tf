terraform {
  backend "s3" {
    bucket = "back-end-state-tf"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}