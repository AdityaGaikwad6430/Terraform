terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.12.0"
    }
  }
  backend "s3" {
    bucket = "Gtr34-tf-state-bucket"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "Gtr34-tf-state-table"
  }
}

 