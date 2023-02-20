terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.0"
    }
  }
  backend "s3" {
    bucket = "empresax-terraform-state"
    key = "dev/banck/terrafomr.tfstate"
    region = "us-east-1"
    dynamodb_endpoint = "terraform-lock-state"
  }
}