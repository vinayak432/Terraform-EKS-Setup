terraform {
  backend "s3" {
    bucket  = "weather-terraform-state-infra"
    key     = "eks/terraform.tfstate"
    region  = "ap-southeast-1"
    encrypt = true
  }
}