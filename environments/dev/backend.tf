terraform {
  backend "s3" {
    bucket = "rraannddoomm"
    key    = "eks/dev/terraform.tfstate"
    region = "us-east-1"
  }
}